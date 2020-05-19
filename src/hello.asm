section .data
str:  db  "Hello!!!", 0x0A
len:  equ $ - str

section .text
global  _start
write:
  mov rax,  1
  mov rdi,  1
  mov rsi,  str
  mov rdx,  len
  syscall
  ret

exit:
  mov rax, 60
  mov rdi,  0
  syscall

_start:
  call write
  call exit