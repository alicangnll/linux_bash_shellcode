nasm -f elf64 -o bash_shellcode.o bash_shellcode.asm
ld -s -o bash_shellcode bash_shellcode.o
chmod +x bash_shellcode
clear
echo "Bash Shellcode has been created!"