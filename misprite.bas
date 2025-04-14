'- Módulo de gestión de sprites --------
'----------------------------------------
' Dibuja la nave en las coordenadas indicadas
' Parámetros:
'   x (Ubyte): Coordenada X de 0 a 31
'   y (Ubyte): Coordenada Y de 0 a 23
SUB DibujarNave(x AS Ubyte, y AS Ubyte)
    ' Coloca la nave en la posición indicada
    ' Se dibuja en la pantalla de 0 a 31 en X y de 0 a 23 en Y
    ' La nave ocupa 3x2 píxeles
    ' Se dibuja el sprite de la nave
    PRINT AT y,x;PAPER 7;INK 2;"[-O-]";
END SUB

' Borra la nave de la pantalla
' Parámetros:
'   x (Ubyte): Coordenada X de 0 a 31
'   y (Ubyte): Coordenada Y de 0 a 23
SUB BorrarNave(x AS Ubyte, y AS Ubyte)
    PRINT AT y,x;PAPER 7;INK 0;"     ";
END SUB