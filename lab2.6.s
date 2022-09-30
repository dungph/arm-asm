; ;4.Viết chương trình tính tổng các phần tử trong ma trận
; ;5.Viết chương trình đếm số phần tử dương, âm trong ma trận
; ;6.Viết chương trình tìm giá trị lớn nhất, nhỏ nhất trên đường chéo chính, chéo phụ
; ;7.Viết chương trình tính tổng các số chẵn, lẻ trong ma trận
; ;8.Viết chương trình tính tổng các số chia hết cho 5 trong ma trận

    ; area reset, data, readonly
        ; dcd 0x20001000
        ; dcd reset_handler

; nums
    ; dcd 1, 1, 1
    ; dcd 1, 2, 1
    ; dcd 1, 1, 3

; cols dcd 3
; rows dcd 3
	
    ; area mycode, code, readonly
        ; entry
        ; export reset_handler

; reset_handler

; start
    ; mov r0, #0
	; mov r8, #0
	; mov r9, #100
	; mov r10, #0
	; mov r11, #100
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
	
	; cmp r2, r3
	; beq cross1
	; add r6, r2, r3
	; add r6, #1
	; cmp r6, r4
	; beq cross2
	; bne endl2
; cross1

	; cmp r8, r7
	; bge cross11
	; mov r8, r7
	; b endl2
; cross11
	; cmp r9, r7
	; ble endl2
	; mov r9, r7
	; b endl2

; cross2
	; cmp r10, r7
	; bge cross11
	; mov r10, r7
	; b endl2
; cross21
	; cmp r11, r7
	; ble endl2
	; mov r11, r7
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
    ; end
