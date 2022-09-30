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
    ; dcd 1, 1, 4, 1, 1, 1, 1, 1, 1, 1
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

    ; area mycode, code, readonly
        ; entry
        ; export reset_handler

; reset_handler
; MAX equ 3
; start
    ; mov r0, #0
    ; ldr r1, =nums
    ; mov r2, #0
    ; ldr r3, =MAX

; do1
    ; ldr r4, [r1, r2]
    ; add r0, r0, r4
    ; add r2, r2, #4
    ; subs r3, #1
    ; cmp r3, #0
    ; bgt do1

; cal_avg
	; ldr r3, =MAX
	; sdiv r0, r3
	

; stop
    ; b stop
    ; end
