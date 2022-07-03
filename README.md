# NO-CHECKSUM

El checksum es una suma de comprobación que se obtiene de un origen de datos. Tiene como propósito principal detectar cambios para proteger la integridad de estos, verificando que no haya discrepancias entre los valores obtenidos al hacer una comprobación inicial y otra final tras la transmisión.

Este tipo de algoritmos (CHECKSUM) no sirve para detectar modificaciones intencionadas, es decir, modificaciones introducidas por un atacante que conoce la función de redundancia y puede recalcular el valor suma deseado, siendo capaz de enviar un mensaje falso con su suma correspondiente. Para proveer este tipo de integridad, es necesario el uso de funciones hash criptográficas, como SHA-256.
