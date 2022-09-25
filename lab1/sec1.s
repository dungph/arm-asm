;sum 1...n

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

loop
    add r1, r2
    add r2, #1
    cmp r2, r0
    ble loop

stop
    b stop

    end
