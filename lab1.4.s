; sum 1...n
; sum odd, even 1...n
; n!
; sum 1...n mod 5 = 0
; x^n
; sum 1 + x^2 + x^3 + ... + x^n
; gcd
; lcm

    ; area reset, data, readonly
        ; dcd 0x20001000
        ; dcd reset

    ; area main, code, readonly
        ; entry
        ; export reset

; reset 
    ; end
