; 1.Viết các chương trình con thực hiện các công việc sau:
; a.Chuyển từ số hệ 16 sang hệ 2 
; b.Chuyển số hệ 10 sang hệ 2
; c.Chuyển số hệ 10 sang hệ 16
; d.Chuyển số hệ 2 sang hệ 8
; e.Chuyển số hệ 8 sang 16
; f.Chuyển số hệ 16 sang 8
; g.Chuyển số từ hệ 2 sang hệ 10.
; 2.Viết chương trình xác định mã chẵn lẻ của các chuổi bit.
; 3.Viết chương trình con đếm các số nguyên tố <= N.
; 4.Viết chương trình con tính tổng các số nguyên tố trong một chuỗi số


     area reset, data, readwrite
         dcd 0x20001000
         dcd reset_handler


myhex dcb "abc", cr
mydec dcb "98", cr
myoct dcb "76", cr
mybin dcb "101", cr
result dcb "0000000", cr




     area mycode, code, readonly
         entry
         export reset_handler

 reset_handler
    mov r0, #1

    end
