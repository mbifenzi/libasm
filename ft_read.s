
section .text
global _ft_read

extern ___error

_ft_read:
	mov rax, 0x2000003
	syscall
	jc	error_exit
	ret					
error_exit:
	push rax
	call ___error
	pop r8
	mov [rax], r8
	mov rax, -1
	ret