# Ejercicio 1

## Proceso

-   Instalar las dependencias de BioPerl con

```bash
    cpanm Bio::Perl
```

-   Descargamos del NCBI el gen a procesar, en particular el ([Homo sapiens coagulation factor VIII (F8)](https://www.ncbi.nlm.nih.gov/nuccore/NM_000132.4)).
-   Guardamos la información en el archivo `sequence.gb`
-   Ejecutamos el script desarrollado con

```bash
    perl ej1.pl
```

-   Como output, obtuvimos el archivo `proteins.fas` con las secuencias de proteinas correspondientes al gen.

-   Utilizando ORFfinder llegamos a la conclusión de que el marco de lectura correcto es el NM_000132-0F, con rango 172-7227 y 7056 nucleótidos de longitud.