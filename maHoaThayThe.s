	; area reset, data, readonly
	; dcd 0x20001000
	; dcd main
	
	; area data_ro, data, readonly
; xauro
	; dcb "hello"
	; align
; len_xauro
	; dcd 5
	
	; area data_khoa, data, readonly
; khoa
	; dcb "hbcdefgaijklmnopqrstuvwxyz"
	
	; area data_ma, data
; xauma
	; dcb 0
	
	; area mycode, code, readonly
	; entry
	
; main
	; ldr r0, =xauro
	; ldr r1, len_xauro
	; ldr r2, =khoa
	; ldr r3, =xauma
	
; loop
	; cmp r1, #0
	; ble stop

	; ldrb r4, [r0]
	; mov r5, r4
	; sub r5, #'a'
	; ldrb r4, [r2, r5]
	; strb r4, [r3]


; next
	; add r0, #1
	; add r3, #1
	; sub r1, #1
	; b loop

; stop
	; b stop
	; end
