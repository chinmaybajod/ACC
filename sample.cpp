// Reverse Iterate over the function basic block
// ensures function is not visted again

std::unordered_map<llvm::Function *, bool> rev_func_visited;

// function traversal
for(auto &entry : this->func_bb_to_inst_id) 
{

    //map<BB_id , pair<BB_In , BB_Out>>
    typedef std::map<long long,pair<std::set<std::string>,std::set<std::string>>> BB_m;
    auto BB_m_prev = *new(BB_m);
    auto BB_m_current = *new(BB_m);

    // changed intialized to 1 for intial execution
    int changed = 1;
    // ensure there is change in current state from previous state
    while(changed) {
        // X is set of live variables
        std::set<std::string>> X;
        // basic block traversal
        for(; I >= RPOT.begin(); I--) {
            // Initalizing current block
            llvm::BasicBlock *currentBlock = *I;
            long long curr_BlockId = getBasicBlockId(currentBlock);
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
            llvm::outs() << "BB_curr_In[" << curr_BlockId << "] : "
            for(auto i : BB_m_current[curr_BlockId].second) {
                llvm::outs() << i << ", ";
            }
            llvm::outs() << "\n";
            // Initalizing GEN_Set and KILL_Set
            std::set<std::string>> GEN_Set, KILL_Set;
            // Instruction traversal
            for(auto instruction_id : ForwardInstList)  {
                // #1
                // #2
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
            llvm::outs() << "BB_curr_In[" << curr_BlockId << "] : "
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