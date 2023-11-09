// Reverse Iterate over the function basic block
// ensures function is not visted again
std::unordered_map<llvm::Function *, bool> func_visited;


// function traversal
for(auto &entry : this->func_bb_to_inst_id) 
{
    // Initializng Functions
    llvm::Function *func = entry.first.first;
    // Check if the function details are already printed and if not, print the details and mark
    // the function as visited
    if (func_visited.find(func) != func_visited.end())
    {
        //skip if visited
        continue;
    }
    if (func->getSubprogram()) {
        llvm::outs() << "[" << func->getSubprogram()->getFilename() << "] ";
    }
    llvm::outs() << "Function: " << func->getName() << "\n";
    llvm::outs() << "-------------------------------------" << "\n";

    // Mark the function as visited
    func_visited[func] = true;

    //Structure conating BB info : map<BB_id , pair<BB_In , BB_Out>>
    typedef std::map<long long,pair<std::set<std::string>,std::set<std::string>>> BB_m;
    auto BB_m_prev = *new(BB_m);
    auto BB_m_current = *new(BB_m);

    // changed intialized to 1 for intial execution
    int changed = 1;
    // ensure there is change in current state from previous state
    while(changed) {
        // X is set of live variables
        std::set<std::string>> X;

        // Initializing reverse iterators
        llvm::ReversePostOrderTraversal<llvm::Function *> RPOT(func);
        llvm::ReversePostOrderTraversal<llvm::Function *>::rpo_iterator I = RPOT.end() - 1;
        llvm::BasicBlock *start_BB = *I;
        llvm::BasicBlock *end_BB = *(RPOT.begin());

        // basic block traversal
        for(; I >= RPOT.begin(); I--) {
            // Instantialing cuurentBlock
            llvm::BasicBlock *currentBlock = *I;
            long long curr_BlockId = getBasicBlockId(currentBlock);

            // Print the basic block name
            llvm::outs() << "\nBasic block " << curr_BlockId << ": " << currentBlock->getName() << " (Predecessors: ";
            llvm::outs() << "[";

            // Print the names of predecessor basic blocks
            for (auto pred = llvm::pred_begin(currentBlock); pred != llvm::pred_end(currentBlock); pred++)
            {
                llvm::outs() << (*pred)->getName();

                if (std::next(pred) != ((llvm::pred_end(currentBlock))))
                {
                    llvm::outs() << ", ";
                }
            }
            llvm::outs() << "]-------";
            //Print the names of successor basic blocks
            llvm::outs() << "Successors: " << "[";
            for(auto succ = llvm::succ_begin(currentBlock); succ != llvm::succ_end(currentBlock); succ++) {
                llvm::outs() << (*succ)->getName() << "------" << getBasicBlockId(*succ);
                if (std::next(succ) != ((llvm::succ_end(currentBlock))))
                {
                    llvm::outs() << " , ";
                }
            }
            llvm::outs() << "])\n";
            // // Reverse Instruction list printing
            // std::list<long long> reverseInstList = this->getReverseInstList(func, currentBlock);
            //Normal Instruction list printing
            std::list<long long> ForwardInstList = this->func_bb_to_inst_id[{func, currentBlock}];
        
            // Assiging previous BB_In to X (BB_current_out)
            X = BB_m_prev[curr_BlockId].first;
            // Union X with Sucessor set 
            // traversing successors of current block to union 
            for(auto succ = llvm::succ_begin(currentBlock); succ != llvm::succ_end(currentBlock); succ++) {
                // BB id of each succesors
                auto id = getBasicBlockId(*succ)
                // Successor Set of prev_BB_In
                auto set = BB_m_prev[id].first;
                for(auto i : set) {
                    X.insert(i);
                }
            }
            // Assigning X into BB_current_Out 
            BB_m_current[curr_BlockId].second = X;
            // printing BB_cuurent_out
            llvm::outs() << "\nBB_curr_In[" << curr_BlockId << "] : "
            for(auto i : BB_m_current[curr_BlockId].second) {
                llvm::outs() << i << ", ";
            }
            llvm::outs() << "\n";
            // Initalizing GEN_Set and KILL_Set
            std::set<std::string>> GEN_Set, KILL_Set;
            // Instruction traversal
            for(auto instruction_id : ForwardInstList)  {

                //Instantialing instruction object
                BaseInstruction *instruction = inst_id_to_object[instruction_id];
                llvm::outs() << " [" << instruction_id << "]";
                // #1 Assignment instruction
                if(instruction->getInstructionType() == InstructionType::ALLOCA) {
                    std::string LHS = instruction->getLHS().first->getName().str();
                    // check if LHS is in X
                    if(X.find(LHS) != X.end()) {
                        // check if LHS is not in KILL_Set
                        if(KILL_Set.find(LHS) == KILL_Set.end()) {
                            // insert RHS operands to GEN_Set                            
                            for(auto opr : instruction->getRHS()) {
                                if(opr.first->getOperandType() == OperandType::VARIABLE) {
                                    GEN_Set.insert(opr.first->getName().str());
                                }
                            }
                        }
                        // insert LHS to KILL_Set
                        KILL_Set.insert(instruction->getLHS().first->getName().str());
                        // printing GEN_Set, KILL_Set of ecah line
                    }
                }
                // #2 Return Instruction
                if(instruction->getInstructionType() == InstructionType::RETURN) {
                    // llvm::Value *value = instruction->getReturnValue();
                    // if(value) {
                    if(instruction->getReturnValue()) {
                        GEN_Set.insert(instruction->getReturnOperand()->getName().str());
                    }
                }
                // #3
            }
            // X = (X - KILL_Set) U GEN_Set
            for(auto i : KILL_Set) {
                X.erase(i);
            }
            for(auto i : GEN_Set) {
                X.insert(i);
            }
            // Assigning X to BB_current_In
            BB_m_current[curr_BlockId].first = X;
            // printing BB_current_In
            llvm::outs() << "\nBB_curr_In[" << curr_BlockId << "] : "
            for(auto i : BB_m_current[curr_BlockId].first) {
                llvm::outs() << i << ", ";
            }
            llvm::outs() << "\n";


        }
        if(BB_m_prev == BB_m_current) {
            changed = 0;
        }
        BB_m_prev = BB_m_current;
    }
}