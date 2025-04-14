Dim x, i, minx, maxx, speed AS Byte
x = 15
i = 1
minx = 1
maxx = 28
' TODO: add a parameter Speed to implement Speed from 1 to 10 with INPUT$ so we can accelerate the game

PRINT AT 10,0 ; PAPER 7 ; INK 0 ; "Use Z for left and X for right"
PRINT AT 15,3 ; PAPER 7 ; INK 0 ; "Press any key to start..."
WaitKeyboard:
    IF INKEY$ = "" THEN GOTO WaitKeyboard
CLS
BORDER 1: PAPER 0: INK 7

DO
    PRINT AT 15, x;" O ";
    REM Read input keys to move the ball to left or right
    LET a$ = INKEY$
    IF a$="z" AND x > minx THEN LET i = -1
    IF a$="x" AND x < maxx THEN LET i = 1
    x = x + i
    REM Comprobamos si la pelota ha llegado al borde derecho
    IF x < minx OR x > maxx THEN
        REM Si se sale entonces cambiamos la dirección de la pelota
        IF i = 1 THEN
            i = -1
        ELSE
            i = 1
        END IF
    END IF
PAUSE 2
/'Alternative to Pause --> More granular control on frame delay using system ticks
LET t = PEEK 23672 + 256 * PEEK 23673
LET wait = 2   ' number of 1/50 sec ticks to wait (set up 1 or 3 to make the game faster/slower)
LET now = t
LET target = t + wait
PauseTime:
    IF now < target THEN LET now = PEEK 23672 + 256 * PEEK 23673: GO TO PauseTime '/'
LOOP