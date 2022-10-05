; ; 1.Viết các chương trình sau dưới dạng chương trình con. Sử dụng các thanh ghi chung để truyền tham số giữa chương trình chính và chương trình con.
; ; 2.Viết các chương trình sau dưới dạng chương trình con. Sử dụng ngăn xếp để truyền tham số giữa chương trình chính và chương trình con.
    ; ; a.Viết chương trình tính tổng các số <= N.
    ; ; b.Viết chương trình tính tổng các số chẵn, số lẻ <= N.
    ; ; c.Viết chương trình tính giai thừa của N.
    ; ; d.Viết chương trình tính tổng các số <= N và chia hết cho 5.
    ; ; e.Viết chương trình tính giá trị xn.
    ; ; f.Viết chương trình tính tổng 1 + x2 + x3 + … + xn.
    ; ; g.Viết chương trình tìm ước chung lớn nhất của 2 số.
    ; ; h.Viết chương trình tìm bội chung nhỏ nhất của 2 số.
; ; 3.Viết chương trình thực hiện phép chia 2 số nguyên (lấy phần nguyên và phần dư) dựa trên phép trừ.


	; area reset, data, readonly
		; dcd 0x20001000
		; dcd reset_handle
		
	; area main, code, readonly
		; entry
		; export reset_handle
		

	
; reset_handle
	; mov r0, #4
	; ; bl b1a;
	; mov r0, #9
	; mov r1, #6
	; bl b1h
	; b stop

; b1a proc
	; push {r1, r2, r3}
; b1a_start
	; mov r1, r0
	; mov r0, #0
; b1a_loop
	; add r0, r1
	; sub r1, #1
	
	; cmp	r1, #1
	; bge b1a_loop
; b1a_stop
	; pop {r1, r2, r3}
	; bx lr
	; endp
	
	
; b1b proc
	; push {r2, r3, r4, r5, r14}
; b1b_start
	; mov r2, r0
	; mov r0, #0
	; mov r1, #0
; b1b_loop
	; mov r12, r2
	; mov r11, #2
	; bl mod_r11_in_r12
	; cmp r12, #0
	; beq b1b_chan
; b1b_le
	; add r1, r2
	; b b1b_giam
; b1b_chan
	; add r0, r2
; b1b_giam
	; sub r2, #1
	; cmp r2, #0
	; bgt b1b_loop
	
; b1b_stop
	; pop {r2, r3, r4, r5, r14}
	; bx lr
	; endp

; b1c proc
	; push {r1, r2, r3}
; b1c_start
	; mov r1, r0
	; mov r0, #1
; b1c_loop
	; mul r0, r1
	; sub r1, #1
	; cmp r1, #0
	; bgt b1c_loop
	
; b1c_stop
	; pop {r1, r2, r3}
	; bx lr
	; endp


; b1d proc
	; push {r1, r2, r3, r14}
; b1d_start
	; mov r1, r0
	; mov r0, #0
	; mov r11, #5
; b1d_loop
	; mov r12, r1
	; bl mod_r11_in_r12
	; cmp r12, #0
	; bne b1d_giam
	; add r0, r1
	
; b1d_giam
	; sub r1, #1
	; cmp r1, #0
	; bgt b1d_loop
	
; b1d_stop
	; pop {r1, r2, r3, r14}
	; bx lr
	; endp
; b1e proc
	; push {r1, r2,r3}
; b1e_start
	; mov r2, r0; r2 = x
	; mov r0, #1; r0: return
; b1e_loop
	; cmp r1, #0
	; ble b1e_stop
	; mul r0, r2
	; sub r1, #1
	; b b1e_loop
	
; b1e_stop
	; pop {r1, r2, r3}
	; bx lr
	; endp
	
; b1f proc
	; push {r1, r2, r3, r4, r14}
; b1f_start
	; mov r10, r0
	; mov r11, r1
	; mov r4, #0
	; mov r5, #0
; b1f_loop
	; mov r0, r10
	; mov r1, r5
	; bl b1e
	; add r4, r0
	; add r5, #1
	; cmp r5, r11
	; ble b1f_loop
	
	
; b1f_stop
	; mov r0, r4
	; pop {r1, r2, r3, r4, r14}
	; bx lr
	; endp
	
; b1g proc
	; push {r1, r2, r3}
; b1g_start
	
; b1g_loop
	; cmp r0, r1
	; beq b1g_stop
	; blt b1g_r1_minus_r0
	; sub r0, r1
	; b b1g_loop
; b1g_r1_minus_r0
	; sub r1, r0
	; b b1g_loop
; b1g_stop
	; pop {r1, r2, r3}
	; bx lr
	; endp

; b1h proc
	; push {r1, r2, r3, r14}
; b1h_start
	; mul r2, r1, r0
	; bl b1g
	; udiv r0, r2, r0
; b1h_loop
; b1h_stop
	; pop {r1, r2, r3, r14}

	; bx lr
	; endp
	
; mod_r11_in_r12 proc
; begin_mod5
	; cmp r12, r11
	; blt end_mod5
	; sub r12, r11
	; b begin_mod5
; end_mod5
	; bx lr
	; endp
	

; stop b stop
	; end
