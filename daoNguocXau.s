	; area reset, data, readonly
	; dcd 0x20001000
	; dcd main
	
	; area data1, data, readonly
; xauvao
	; dcb "hello", 0x0d

	; area data2, data
; xaura
	; dcb 0

	; area mycode, code, readonly
	; entry


; main
	; ldr r0, =xauvao
	; mov r1, #0 ; do dai xau
	; ldr r2, =xaura

; dodai
	; ldrb r3, [r0, r1]
	; cmp r3, #0x0d
	; beq loop
	; add r1, #1
	; b dodai

; loop
	; cmp r1, #0
	; beq stop

	; sub r1, #1
	; ldrb r3, [r0, r1]
	
	; strb r3, [r2]
	; add r2, #1

	; b loop


; stop
	; b stop
	; end
	
	area reset, data, readonly 
		dcd 0x20001000 
		dcd main1 
	
	area data1, data, readonly 
chuoi dcb "phuong"
n dcd 6
	area data2, data 
chuoidao dcb 0 
	area mycode, code, readonly 
		entry 
main1 
	ldr r0, =chuoi 
	ldr r1, n 
	ldr r2, =chuoidao 
	mov r4, #0 
	sub r1, #1
loop 
	cmp r1, #0 
	blt stop 
	add r4, r0, r1
	ldrb r3, [r4]
	strb r3, [r2]
	add r2, #1
	sub r1, #1 
	b loop
	
stop  
	b stop 
	end
