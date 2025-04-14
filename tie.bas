#INCLUDE "misprite.bas"
DIM x, y AS Ubyte
CLS
' Situamos la nave en el centro
x = 13
y = 12
' Dibujamos la nave por primera vez
DibujarNave(x, y)
DO ' Bucle infinito
    ' Comprobamos si se ha pulsado alguna tecla
    IF INKEY$ <> "" THEN
        'Si se ha pulsado cualquier tecla entonces borramos la nave
        BorrarNave(x, y)
        'Izquierda
        IF INKEY$ = "o" THEN
            ' Comprobar si podemos mover la nave a la izquierda
            IF x > 0 THEN
                ' Nos movemos a la izquierda
                x = x - 1
            END IF
        'Derecha
        ELSEIF INKEY$ = "p" THEN
            ' Comprobar si podemos mover la nave a la derecha
            IF x < 27 THEN
                ' Nos movemos a la derecha
                x = x + 1
            END IF
        'Arriba
        ELSEIF INKEY$ = "q" THEN
            ' Comprobar si podemos mover la nave hacia arriba
            IF y > 0 THEN
                ' Nos movemos hacia arriba
                y = y - 1
            END IF
        'Abajo
        ELSEIF INKEY$ = "a" THEN
            ' Comprobar si podemos mover la nave hacia abajo
            IF y < 23 THEN
                ' Nos movemos hacia abajo
                y = y + 1
            END IF
        END IF
        ' Dibujamos la nave en la nueva posición
        DibujarNave(x, y)
    END IF
    PAUSE 1 ' Esperamos un poco para que la nave no se mueva demasiado rápido'
LOOP