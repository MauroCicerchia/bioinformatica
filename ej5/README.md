# Ejercicio 4

## Proceso

-   Instalar las dependencias de BioPerl con

```bash
    cpanm Bio::Perl
    cpanm Bio::Factory::EMBOSS --force
```

-   Instalar EMBOSS en el sistema linux (sin este paso no funciona)

```bash
    sudo apt-get install emboss
```

-   Descargar la base de datos Prosite y correr el proceso prosextract

```bash
    wget --no-verbose --recursive --no-parent -X /old_releases,/databases/prosite/old_releases ftp://ftp.expasy.org/databases/prosite/
    prosextract
```

-   Ejecutar el script con el siguiente comando:

```bash
    perl ej5.pl
```

## Resultado

-   Como salida del proceso, obtuvimos los archivos `proteins.fas`, con la secuencia traducida en su marco de lectura correspondiente, y el archivo `proteins.motifs` con los motifs encontrados en la secuencia.
