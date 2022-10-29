	; area reset, data, readonly
	; dcd 0x20001000
	; dcd main
	
	; area data1, data, readonly
; xau1
	; dcb "hello, ", 0x0d
	
	; area data2, data, readonly
; xau2
	; dcb "world", 0x0d


	; area data3, data
; xau3
	; dcb 0

	; area mycode, code, readonly
	; entry


; main
	; ldr r0, =xau1
	; ldr r1, =xau2
	; ldr r2, =xau3


; loop1
	; ldrb r3, [r0]
	; cmp r3, #0x0d
	; beq loop2

	; add r0, #1
	; strb r3, [r2]
	; add r2, #1
	; b loop1
; loop2
	; ldrb r3, [r1]
	; cmp r3, #0x0d
	; beq stop1
	; add r1, #1
	; strb r3, [r2]
	; add r2, #1
	; b loop2
	
; stop1
	; strb r3, [r2]

; stop 
	; b stop
	; end
