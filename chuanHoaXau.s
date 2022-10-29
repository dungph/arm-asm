	; area reset, data, readonly
	; dcd 0x20001000
	; dcd main
	
	; area data_in, data, readonly
; xau_vao
	; dcb " he   llo  ", 0x0D


	; area data_out, data
; xau_ra
	; dcb 0

	; area mycode, code, readonly
	; entry

; main
	; ldr r0, =xau_vao
	; ldr r1, =xau_ra

; loop1
	; ldrb r2, [r0]
	; cmp r2, #' '
	; bne loop2
	; add r0, #1
	; b loop1

; loop2
	; ldrb r2, [r0]
	; cmp r2, #0x0D
	; beq last_space

	; strb r2, [r1]
	; add r1, #1
	; add r0, #1

	; cmp r2, #' '
	; beq clear_space
	; bne loop2

; clear_space
	; ldrb r2, [r0]
	; cmp r2, #' '
	; bne loop2

	; add r0, #1
	; b clear_space


; last_space
	; sub r1, #1
	; ldrb r2, [r1]
	; cmp r2, #' '
	; bne stop
	; mov r3, #0
	; strb r3, [r1]

; stop b stop
	; end

	
