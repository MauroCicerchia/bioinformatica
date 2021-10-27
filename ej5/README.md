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

-   Ejecutar el script con el siguiente comando:

```bash
    perl ej4.pl <pattern>
```

## Resultado

-   Como salida del proceso, obtuvimos el archivo `results.fas` con las todas las secuencias correspondientes a la especie especificada en el campo __pattern__ encontradas en los hits del archivo `blast.report`.