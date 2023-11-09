

//map<BB_id , pair<BB_In , BB_Out>>
typedef std::map<long long,pair<std::set<std::string>,std::set<std::string>>> BB_m;
auto BB_m_prev = *new(BB_m);
auto BB_m_current = *new(BB_m);

// Reverse Iterate over the function basic block
// ensures function is not visted again

std::unordered_map<llvm::Function *, bool> rev_func_visited;
for(auto &entry : this->func_bb_to_inst_id) 
{
    
    llvm::Function *func = entry.first.first;
    // Check if the function details are already printed and if not, print the details and mark
    // the function as visited
    if (rev_func_visited.find(func) != rev_func_visited.end())
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
    rev_func_visited[func] = true;

    llvm::ReversePostOrderTraversal<llvm::Function *> RPOT(func);
    llvm::ReversePostOrderTraversal<llvm::Function *>::rpo_iterator I = RPOT.end() - 1;
    llvm::BasicBlock *start_BB = *I;
    llvm::BasicBlock *end_BB = *(RPOT.begin());

    //assigning BB_prev.BB_Out = BB_prev.BB_In
    auto temp = BB_m_prev;
    for(auto i : temp) {
        i.first = i.second;
    }
    BB_m_current = BB_m_prev;
    //basic block traversal
    for(; I >= RPOT.begin(); I--) {
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
        // Reverse Instruction list printing
        std::list<long long> reverseInstList = this->getReverseInstList(func, currentBlock);
        //Normal Instruction list printing
        std::list<long long> ForwardInstList = this->func_bb_to_inst_id[{func, currentBlock}];

        //

        //X is set containing live variables throughout the code and previous as well
        std::set<std:string>> X = BB_m_prev[getBasicBlockId(currentBlock)].first;

        //traversing successors of current block to union 
        for(auto succ = llvm::succ_begin(currentBlock); succ != llvm::succ_end(currentBlock); succ++) {
            auto id = getBasicBlockId(*succ)
            auto set = BB_m_prev[id].second;
            for(auto i : set) {
                X.insert(i);
            }
        }
        //Assigning BB_In to X before traversing through instruction set
        BB_m_current[getBasicBlockId(currentBlock)].first = X;

        //iterate over basic block
        for(auto instruction_id : ForwardInstList)  {
            //code here
            BaseInstruction *instruction = inst_id_to_object[instruction_id];
            llvm::outs() << " [" << instruction_id << "]";


            if(instruction->getInstructionType() == InstructionType::RETURN) {

            }



            instruction->printInstruction();
            //code here
        } 

        //Assigning BB_Out to X before traversing through instruction set
        BB_m_current[getBasicBlockId(currentBlock)].Second = X;
    }
    //check iterations
    if(BB_m_prev == BB_m_current) break;
    BB_m_prev = BB_m_current;
    
}





