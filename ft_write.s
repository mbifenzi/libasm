global _ft_write
extern ___error
_ft_write:
	mov	rax, 0x2000004
 syscall
	jc	error_exit
	ret

error_exit:
	push rax
    call ___error
    pop r8
    mov [rax], r8 ; set the errno value from r8 to rax
    mov rax, -1
    ret