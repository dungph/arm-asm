; ;4.Viết chương trình tính tổng các phần tử trong ma trận
; ;5.Viết chương trình đếm số phần tử dương, âm trong ma trận
; ;6.Viết chương trình tìm giá trị lớn nhất, nhỏ nhất trên đường chéo chính, chéo phụ
; ;7.Viết chương trình tính tổng các số chẵn, lẻ trong ma trận
; ;8.Viết chương trình tính tổng các số chia hết cho 5 trong ma trận

    ; area reset, data, readonly
        ; dcd 0x20001000
        ; dcd reset_handler

; nums
    ; dcd 40, 1
	; dcd 2, 5


; cols dcd 2
; rows dcd 2
	
    ; area mycode, code, readonly
        ; entry
        ; export reset_handler

; reset_handler

; start
    ; mov r0, #0
	; mov r8, #0
	; mov r9, #0
    ; ldr r1, =nums
    ; mov r2, #0
    ; mov r3, #0
	; ldr r4, cols
	; ldr r5, rows
	

; loop1 
	
; loop2 
	; mov r6, r3
	; mul r6, r4
	; add r6, r2
	; mov r7, #4
	; mul r6, r7
	; ldr r7, [r1, r6]
	
	; mov r0, r7
	; bl mod5_in_r0
	; cmp r0, #0
	; beq add_eq
	; bne endl2
; add_eq
	; add r8, r7
	; b endl2

	
; endl2


	; add r2, #1
	; cmp r2, r4
	; blt loop2
	; mov r2, #0
	
	
	; add r3, #1
	; cmp r3, r5
	; blt loop1
	


; stop
    ; b stop

	
; mod5_in_r0 proc
; begin_mod5
	; cmp r0, #5
	; blt end_mod5
	; sub r0, #5
	; b begin_mod5
; end_mod5
	; bx lr
	
	; endp
	
	
    ; end
