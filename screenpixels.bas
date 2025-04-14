DIM dir AS UInteger
DIM n AS Integer

CLS

' Todos los posibles valores de un byte en orden inverso
FOR n = 255 TO 0 STEP -1
    ' Rellenamos el área de pixels con el valor de n
    FOR dir = $4000 TO $57FF
        POKE dir, n
        ' Pequeña pasa de 20 milisegundos para poder apreciar el cambio
        PAUSE 1
    NEXT dir
    ' Se imprime el valor de dir en hexadecimal en la parte inferior
    PRINT HEX$(dir);
NEXT n