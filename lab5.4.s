; ; 1.Viết các chương trình con thực hiện các công việc sau:
; ; a.Chuyển từ số hệ 16 sang hệ 2 
; ; b.Chuyển số hệ 10 sang hệ 2
; ; c.Chuyển số hệ 10 sang hệ 16
; ; d.Chuyển số hệ 2 sang hệ 8
; ; e.Chuyển số hệ 8 sang 16
; ; f.Chuyển số hệ 16 sang 8
; ; g.Chuyển số từ hệ 2 sang hệ 10.
; ; 2.Viết chương trình xác định mã chẵn lẻ của các chuổi bit.
; ; 3.Viết chương trình con đếm các số nguyên tố <= N.
; ; 4.Viết chương trình con tính tổng các số nguyên tố trong một chuỗi số


      area reset, data, readonly
          dcd 0x20001000
          dcd reset_handler
list dcd 7, 5, 6
nlist dcd 3

      area mycode, code, readonly
          entry
          export reset_handler

reset_handler
	mov r0, #0
	ldr r1, =list
	ldr r2, nlist
	mov r4, #0
loop
	ldr r3, [r1, r0]
	mov r10, r3
	bl r10_is_prime
	cmp r10, #0
	beq next
	add r4, r3
next
	add r0, #4
	sub r2, #1
	cmp r2, #0
	bgt loop

stop 
	b stop


r10_is_prime proc 
	push {r0, r1, r2, r14}
is_prime_start
	cmp r10, #2
	beq is_prime_stop
	mov r0, #2
	mov r1, r10
	udiv r1, r10, r0
is_prime_loop 
	mov r11, r10
	mov r12, r0
	bl r11_mod_r12
	cmp r11, #0
	
	beq is_not_prime_stop
	add r0, #1
	cmp r0, r1
	blt is_prime_loop

is_prime_stop
	mov r10, #1
	pop {r0, r1,r2, r14}	
	bx lr
is_not_prime_stop
	mov r10, #0
	pop {r0, r1, r2,r14}
	bx lr
	endp


r11_mod_r12 proc
mod_start
	cmp r11, r12
	blt mod_end
	sub r11, r12
	b mod_start
mod_end
	bx lr
	endp

     end
