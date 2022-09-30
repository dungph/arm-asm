; ;5.Viết chương trình đếm số phần tử dương, âm trong ma trận
; ;6.Viết chương trình tìm giá trị lớn nhất, nhỏ nhất trên đường chéo chính, chéo phụ
; ;7.Viết chương trình tính tổng các số chẵn, lẻ trong ma trận
; ;8.Viết chương trình tính tổng các số chia hết cho 5 trong ma trận

    ; area reset, data, readonly
        ; dcd 0x20001000
        ; dcd reset_handler

; nums
    ; dcd -1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

; cols dcd 2
; rows dcd 2
	
    ; area mycode, code, readonly
        ; entry
        ; export reset_handler

; reset_handler

; start
    ; mov r0, #0
	; mov r8, #0
	
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
	; cmp r7, #0
	; bgt posi
	; blt nega
	; beq endl2
; posi
	; add r8, #1
	; b endl2
; nega
	; add r0, #1

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
