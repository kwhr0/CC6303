		.export _puts
		.code

_puts:		tsx
		ldx 3,x
putl:
		ldab ,x
		beq putsdone
		jsr __putc
		inx
		bra putl
putsdone:	ldab #10
		jmp __putc

