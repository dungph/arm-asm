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
	; dcb "cat", 0x0D

	; area data2, data
	; dcd 0

     ; area mycode, code, readonly
         ; entry
         ; export reset_handler

; reset_handler
	; ldr r0, =data1
	; mov r1, #0

; loop 
	; ldrb r3, [r0], #1

	; cmp r3, #13

	; beq endloop
	; add r1, #1
	; b loop


; endloop
	; ldr r4, =data2
	; str r1, [r4]

; stop 	
	; b stop
	; end 
