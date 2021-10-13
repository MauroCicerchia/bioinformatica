# Ejercicio 2

## Proceso (Local)

-   Instalar BLAST:

```
    sudo apt-get install ncbi-blast+
```

-   Tener las secuencias de aminoácidos obtenidas como resultado del **Ejercicio 1** en formato FASTA. Las mismas se encuentran en el archivo `proteins.fas`.
-   Descargar la base de datos de [**Swissprot**](https://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz)
-   Ejecutar

```
    makeblastdb -in swissprot -dbtype prot
```
-   Este comando nos generará los archivos `swissprot.phr`,`swissprot.pin`,`swissprot.psq`.

-   Ejecutar

```
    blastp -task blastp -db swissprot/swissprot -query proteins.fas -out report.blast
```

-   Este comando generará el archivo "report.blast" con el reporte de blast incluyendo las diferentes especies que contienen las secuencias de proteínas.

## Proceso alternativo (Online)

-   Ingresar al [**portal de Blast del NCBI**](https://blast.ncbi.nlm.nih.gov/Blast.cgi)
-   Seleccionar **Protein BLAST** (protein->protein)
-   Seleccionar **blastp**
-   Subir el archivo `proteins.fas`, o copiar su contenido
-   Hacer click en el botón **BLAST**

## Resultado

-   Como resultado del análisis Blast sobre el input proporcionado, notamos que la primer secuencia con ocurrencias encontradas con éxito es la utilizada en el ejercicio 1 [P00451.1](https://www.ncbi.nlm.nih.gov/protein/P00451.1), por lo que se puede decir que el proceso se ejecuto de manera correcta.

|   Score   | Identities  |  Positives  | Expect |  Gaps  |
| :-------: | :--------:  |  :-------:  | :----: | :----: |
| 4908 bits |  2351/2351  |  2351/2351  |   0    | 0/2351 |

### Interpretación de resultados

-   Los **Identities** representan la cantidad de aminoacidos que coinciden de manera perfecta entre ambas secuencias.
-   Los **Positives** representan la cantidad de aminoacidos que coinciden de manera exacta, pero también aquellos que tienen características químicas similares.
-   Los **Gaps** representan aquellos aminoacidos que no coinciden entre ambas secuencias, por lo que tiene sentido que sean 0.
-   El **Expect** representa que tan alta es la posibilidad de que la coincidencia sea por azar.