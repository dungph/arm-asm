; ; 1.Viết các chương trình so sánh 2 xâu (cài đặt theo độ dài)
; ; 2.Viết chương trình đếm số ký tự của một xâu cài đặt theo ký tự kết thúc.
; ; 3.Viết chương trình đảo ngược xâu trong hai trường hợp cài đặt theo độ dài và ký tự kết thúc
; ; 4.Viết chương trình chuẩn hóa xâu
; ; 5.Viết chương trình nối hai xâu.



    ; area reset, data, readonly
         ; dcd 0x20001000
         ; dcd reset_handler
	
	; area data1, data, readonly
; table1
	; dcd 3
	; dcb "cat"
	
	; area data2, data, readonly
; table2
	; dcd 3
	; dcb "dog"
	
	; area result, data
	; align
; match
	; dcd 0

     ; area mycode, code, readonly
         ; entry
         ; export reset_handler

; reset_handler
	; mov r0, #2
	; ldr r0, =data1
	; ldr r1, =data2
	; ldr r2, =match
	; ldr r3, [r0], #4
	; ldr r4, [r1], #4
	
	; cmp r3, r4
	; bne stop
	; cmp r3, #0
	; beq equal

; loop 
	; ldrb r5, [r0], #1
	; ldrb r6, [r1], #1
	; cmp r5, r6
	; bne stop
	; sub r3, #1
	; cmp r3, #0
	; beq stop
	; b loop

; equal
	; ldr r7, =match
	; mov r2, #1
	; str r2, [r7]
	
; stop 	
	; b stop
	; end 
