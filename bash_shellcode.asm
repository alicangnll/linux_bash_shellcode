BITS 64

section .data
  msg db "Injected!!!", 0ah

section .text
  global _start
 
_start:
  xor rax, rax
  mov [rsp-8], rax
  mov qword [rsp-16], 0x72613162 ; encrypted 'bash'
  xor byte [rsp-16], 0x08
  xor byte [rsp-15], 0x16
  xor byte [rsp-14], 0x24
  xor byte [rsp-13], 0x32
  lea rdx, [rsp-16]
  mov qword [rsp-24], rdx
  mov qword [rsp-32], rdx
  lea rdi, [rsp-32]
 
  xor eax, eax
  mov al, 59
  ; Print Text
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, 13
  syscall
 
  xor eax, eax
  mov ebx, eax
  mov al, 60
  ; Print Text Finished
  mov rax, 60
  mov rdi, 0
  syscall