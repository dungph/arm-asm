;sum odd, even 1...n

    area reset, data, readonly
        dcd 0x20001000
        dcd reset
        n dcd 10

    area main, code, readonly
        entry
        export reset

reset 
    ldr r0, n
    mov r1, #0
    mov r2, #0
    mov r3, #1
    mov r4, #2

odd
    add r1, r3
    add r3, #2
    cmp r3, r0
    ble odd

even
    add r2, r4
    add r4, #2
    cmp r4, r0
    ble even


stop
    b stop
    end
