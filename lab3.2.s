; 1.Vi?t các chuong trình sau du?i d?ng chuong trình con. S? d?ng các thanh ghi chung d? truy?n tham s? gi?a chuong trình chính và chuong trình con.
; 2.Vi?t các chuong trình sau du?i d?ng chuong trình con. S? d?ng ngan x?p d? truy?n tham s? gi?a chuong trình chính và chuong trình con.
    ; a.Vi?t chuong trình tính t?ng các s? <= N.
    ; b.Vi?t chuong trình tính t?ng các s? ch?n, s? l? <= N.
    ; c.Vi?t chuong trình tính giai th?a c?a N.
    ; d.Vi?t chuong trình tính t?ng các s? <= N và chia h?t cho 5.
    ; e.Vi?t chuong trình tính giá tr? xn.
    ; f.Vi?t chuong trình tính t?ng 1 + x2 + x3 + … + xn.
    ; g.Vi?t chuong trình tìm u?c chung l?n nh?t c?a 2 s?.
    ; h.Vi?t chuong trình tìm b?i chung nh? nh?t c?a 2 s?.
; 3.Vi?t chuong trình th?c hi?n phép chia 2 s? nguyên (l?y ph?n nguyên và ph?n du) d?a trên phép tr?.


	area reset, data, readonly
		dcd 0x20001000
		dcd reset_handle
		
	area main, code, readonly
		entry
		export reset_handle
		

	
reset_handle
	mov r0, #4
	mov r0, #9
	mov r1, #6
	push {r0}
	bl b2a
	pop {r4}
	b stop

b2a proc
	pop {r0}
b2a_start
	mov r1, r0
	mov r0, #0
b2a_loop
	add r0, r1
	sub r1, #1
	
	cmp	r1, #1
	bge b2a_loop
b2a_stop
	push {r0}
	bx lr
	endp
	
	
b2b proc
	pop {r0}
	push {r14}
b2b_start
	mov r2, r0
	mov r0, #0
	mov r1, #0
b2b_loop
	mov r12, r2
	mov r11, #2
	bl mod_r11_in_r12
	cmp r12, #0
	beq b2b_chan
b2b_le
	add r1, r2
	b b2b_giam
b2b_chan
	add r0, r2
b2b_giam
	sub r2, #1
	cmp r2, #0
	bgt b2b_loop
	
b2b_stop
	pop {r14}
	push {r0, r1}
	bx lr
	endp

b2c proc
	pop {r0}
b2c_start
	mov r1, r0
	mov r0, #1
b2c_loop
	mul r0, r1
	sub r1, #1
	cmp r1, #0
	bgt b2c_loop
	
b2c_stop
	push {r0}
	bx lr
	endp


b2d proc
	pop {r0}
	push {r14}

b2d_start
	mov r1, r0
	mov r0, #0
	mov r11, #5
b2d_loop
	mov r12, r1
	bl mod_r11_in_r12
	cmp r12, #0
	bne b2d_giam
	add r0, r1
	
b2d_giam
	sub r1, #1
	cmp r1, #0
	bgt b2d_loop
	
b2d_stop
	pop {r14}
	push {r0}
	bx lr
	endp
	
b2e proc
	pop {r0, r1}
b2e_start
	mov r2, r0; r2 = x
	mov r0, #1; r0: return
b2e_loop
	cmp r1, #0
	ble b2e_stop
	mul r0, r2
	sub r1, #1
	b b2e_loop
	
b2e_stop
	push {r0}
	bx lr
	endp
	
b2f proc
	pop {r0, r1}
	push {r14}
b2f_start
	mov r10, r0
	mov r11, r1
	mov r4, #0
	mov r5, #0
b2f_loop
	mov r0, r10
	mov r1, r5
	bl b2e
	add r4, r0
	add r5, #1
	cmp r5, r11
	ble b2f_loop
	
	
b2f_stop
	mov r0, r4
	pop {r14}
	push {r0}
	bx lr
	endp
	
b2g proc
	pop {r0, r1}
b2g_start
	
b2g_loop
	cmp r0, r1
	beq b2g_stop
	blt b2g_r1_minus_r0
	sub r0, r1
	b b2g_loop
b2g_r1_minus_r0
	sub r1, r0
	b b2g_loop
b2g_stop
	push {r0}
	bx lr
	endp

b2h proc
	pop {r0, r1}
	push {r14}
b2h_start
	mul r2, r1, r0
	bl b2g
	udiv r0, r2, r0
b2h_loop
b2h_stop
	pop {r14}
	push {r0}

	bx lr
	endp
	
mod_r11_in_r12 proc
begin_mod5
	cmp r12, r11
	blt end_mod5
	sub r12, r11
	b begin_mod5
end_mod5
	bx lr
	endp
	

stop b stop
	end
