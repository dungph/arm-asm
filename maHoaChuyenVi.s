	; area reset, data, readonly 
		; dcd 0x20001000 
		; dcd main1 
	; area data1, data, readonly
; xauro dcb "phuong"
	; align
; n dcd 6
	; area data2, data, readonly 
; khoa dcd 2
	; area data3, data 
; xauma dcb 0
	; area mycode, code, readonly 
		; entry 	
		; export main1 
; main1 
	; ldr r0, =xauro 
	; ldr r1, n 
	; ldr r2, khoa
	; ldr r3, =xauma
; loop 
	; cmp r1, #0 
	; beq stop 	
	; ldrb r4, [r0]
	; add r4, r2 	
	; cmp r4, #'z'
	; ble ghi			
	; sub r4, #26 
; ghi 
	; strb r4, [r3]
; tang 	
	; sub r1, #1
	; add r0, #1 
	; add r3, #1 
	; b loop 
; stop 
	; b stop 
	; end
