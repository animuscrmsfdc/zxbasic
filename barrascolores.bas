REM 4 wide vertical strips repeating the 8 colours of the spectrum per column
Dim linea, columna, papel AS UByte

BORDER 1
PAPER 0
INK 0
CLS

DO ' infinite loop'
    FOR linea = 0 to 23 ' looping over 24 lines'
        FOR columna = 0 to 31 ' looping over 32 columns'
            PAPER papel
            PRINT AT linea, columna;" " ' printing a space';
            papel = papel + 1 ' there are 8 colours in Basic 48k'
        NEXT columna
    NEXT linea
    PRINT "One more full screen printed!"
    PAUSE 5
LOOP