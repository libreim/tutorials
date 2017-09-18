# Tutorial de LaTeX

Lee el [ejemplo en PDF](https://github.com/libreim/tutorials/blob/master/latex/ejemplo.pdf) y compáralo con el [código fuente en LaTeX](https://github.com/libreim/tutorials/blob/master/latex/ejemplo.tex). En esta carpeta hay otros archivos auxiliares que se utilizan para componer el documento.

Para compilar el documento por tu cuenta, necesitarás una distribución de LaTeX, el paquete `pygments` de Python y usar el comando

~~~sh
pdflatex -shell-escape ejemplo.tex
~~~
