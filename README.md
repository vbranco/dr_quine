
## Sources
### PDF Project
https://cdn.intra.42.fr/pdf/pdf/5194/dr_quine.fr.pdf

### Infos generiques
http://www.madore.org/~david/computers/quine.html
https://sciencetonnante.wordpress.com/2012/03/19/les-quines-des-programmes-informatiques-auto-replicateurs/

### System calls
https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#x86_64-64_bit
http://asm.sourceforge.net/syscall.html
https://filippo.io/linux-syscall-table/
https://www.informatik.htw-dresden.de/~beck/ASM/syscall_list.html

### Registres
https://i.stack.imgur.com/j8hpC.png

##Compile
https://stackoverflow.com/questions/55314762/linking-a-program-using-printf-with-ld
###Colleen
nasm -f elf64 Colleen.s
clang -Wall -Werror -Wextra -no-pie Colleen.o -o Colleen

###Grace
nasm -D FIRST=1 -f elf64 Grace.s
clang -Wall -Werror -Wextra -no-pie -nostartfiles Grace.o -o Grace

###Sully

nasm -f elf64 file.s
- si j'utilise global _start commme debut de program
clang -Wall -Werror -Wextra -no-pie -nostartfiles file.o
- autrement avec global main il faut
clang -Wall -Werror -Wextra -no-pie file.o

###Macros and defines
https://www.tutorialspoint.com/assembly_programming/assembly_constants.htm
https://www.tortall.net/projects/yasm/manual/html/nasm-macro-conditional.html
https://www.nasm.us/doc/nasmdoc2.html#section-2.1.19

###Python format string
https://docs.python.org/fr/3.5/library/string.html
https://www.geeksforgeeks.org/python-output-formatting/