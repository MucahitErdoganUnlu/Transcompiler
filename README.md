# Transcompiler
# Introduction
Purpose of this project is to develop a transpiler that translates the assignment statements and expressions into low level virtual machine intermediate representation. Translated LLVM IR code shall be able to compute and output the statements. The assignments can include the expressions defined in the assignment file. The expressions are “+”, “*”, “-“, “/”, “&”, “|”, “%” operations and “xor”, “ls”, “rs”, “lr”, “rr”, “not” functions. Also, the LLVM IR code shall report errors with the line numbers.

# Program Interface
Users shall write a file called “filename.adv” which includes the operations to be calculated. Then open computer’s terminal by typing “terminal” in finder and clicking it. After that, user shall go to directory which includes main.c and htable.c files and put the file “filename.adv” there. These three files shall be in the same directory and user shall go to that directory by using “cd” command.
    • Step-1: Go to correct directory.
    • Step-2: Run “make” command.
    • Step-3: Run “./advcalc2ir filename.adv” command.
    • Step-4: Run “lli file.ll”  command and see the results of calculation.
OR
    • Step-5: Run “llc file.ll -o file.s” command to produce assembly code.
    • Step-6: Run “clang file.s -o myexec” and then “./myexec” commands to see the results from executable.

# Program Execution
Write the adv file by considering the properties stated in “Input and Output” section. Put adv file to the directory which includes main.c and htable.c. After going to this directory and running firstly “make” and “./advcalc2ir filename.adv”, then “lli file.ll” commands on terminal one by one, you can see the results. Then running “llc file.ll -o file.s” and “clang file.s -o myexec” and “./myexec” commands on terminal will invoke the llc compiler, produce and compile the assembly code and produce the executable then run it. Again, you can see the same results.
