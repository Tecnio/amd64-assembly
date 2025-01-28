section .data
	msg db "saggy uses std::auto_ptr", 0xA
	len equ $ - msg

section .text
	global _start

_start:
	mov rsi, msg
	mov rdx, len
	call print
	call exit

print:
    mov rax, 1
    mov rdi, 1
    syscall
    ret

exit:
	mov rax, 60
	xor rdi, rdi
	syscall
