; ;2.Viết chương trình tìm giá trị lớn nhất và nhỏ nhất trong chuỗi số.
; ;3.Viết chương trình tính trung bình cộng của chuỗi số.
; ;4.Viết chương trình tính tổng các phần tử trong ma trận
; ;5.Viết chương trình đếm số phần tử dương, âm trong ma trận
; ;6.Viết chương trình tìm giá trị lớn nhất, nhỏ nhất trên đường chéo chính, chéo phụ
; ;7.Viết chương trình tính tổng các số chẵn, lẻ trong ma trận
; ;8.Viết chương trình tính tổng các số chia hết cho 5 trong ma trận

    ; area reset, data, readonly
        ; dcd 0x20001000
        ; dcd reset_handler

; nums
    ; dcd 0, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 10, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    ; dcd 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

    ; area mycode, code, readonly
        ; entry
        ; export reset_handler

; reset_handler
; MAX equ 100
; start

    ; ldr r1, =nums

	
    ; mov r2, #0
    ; ldr r3, =MAX
	; ldr r4, [r1, r2]

	; mov r0, r4
	; mov r5, r4

; do1
    ; ldr r4, [r1, r2]
	
	; cmp r4, r0
	; bge next
	; mov r0, r4
; next
	; cmp r4, r5
	; ble next2
	; mov r5, r4
	
; next2
	; add r2, #4
    ; subs r3, #1
    ; cmp r3, #0
    ; bgt do1


; stop
    ; b stop
    ; end
