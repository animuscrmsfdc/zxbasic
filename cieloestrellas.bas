' - Defines -----------------------------------
#DEFINE MAX_ESTRELLAS 100 ' aquí podemos cambiar el número de estrellas que se visualizan
#DEFINE ESTRELLAS_X 0 ' fila
#DEFINE ESTRELLAS_Y 1 ' columna
#DEFINE ESTRELLAS_V 2 ' velocidad de las estrellas

' - Variables --------------------------------
DIM estrellas(MAX_ESTRELLAS, 2) AS UByte ' matriz de estrellas'
DIM n, x, y, v AS UByte

' - Preparamos el espacio --------------------
BORDER 0
PAPER 0
INK 7
CLS

' - Creamos las estrellas por primera vez ----
RANDOMIZE 0
FOR n = 0 TO MAX_ESTRELLAS
    estrellas(n, ESTRELLAS_X) = RND*30 ' RND da valor entre 0 y 1, y multiplicamos por 30 que es máximo de columnas
    estrellas(n, ESTRELLAS_Y) = RND*22 ' RND da valor entre 0 y 1, y multiplicamos por 22 que es máximo de filas
    estrellas(n, ESTRELLAS_V) = INT(RND*6)+1 ' ' RND da valor entre 0 y 1 para integer con máximo 7 de velocidad, y suma 1 porque velocidad cero no queremos
NEXT n

' - Animamos el espacio ----------------------
DO ' Bucle infinito
' TODO: rest of the code
LOOP