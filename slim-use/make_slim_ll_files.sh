clang -g -S -emit-llvm -O0 -Xclang -disable-O0-optnone -fno-discard-value-names -c -o ./samples/test1.ll ./samples/test1.c
opt -S -instnamer -mem2reg -mergereturn ./samples/test1.ll -o ./samples/test1.slim.ll