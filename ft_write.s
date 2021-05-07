global _ft_write

_ft_write:
	mov	rax, 0x2000004
 syscall
	jc	error_exit
	ret

error_exit:
	mov rax, -1,
	ret