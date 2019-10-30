---
title: Tutorial de Markdown # Título
author: Pablo Baeyens       # Nombre del autor
header-includes:            # Incluir paquetes en LaTeX
toc: false                  # Índice
numbersections: false       # Numeración de secciones
fontsize: 11pt              # Tamaño de fuente
geometry: margin=1in        # Tamaño de los márgenes
---

# Markdown 101

[Markdown](//daringfireball.net/projects/markdown) es un lenguaje de marcado ligero utilizado en páginas como Github (este documento está escrito en Markdown!).
También puede compilarse a LaTeX utilizando herramientas como [`pandoc`](http://pandoc.org) para generar pdfs.

## Sintaxis

A continuación puedes ver ejemplos de la sintaxis básica. 
Para entender cómo funciona Markdown mira [el código fuente](//raw.githubusercontent.com/libreim/tutorials/master/markdown/ejemplo.md) de este documento a la vez que lo lees.

### Títulos

Los títulos se indican con `#`. Hay hasta 6 niveles (`######`):

### Título de tercer nivel
#### Título de cuarto nivel

*****

### Formato de texto

Podemos dar formato al texto con **negrita**, *cursiva* (o ***ambos***) o `monoespaciado`.

También puedes poner citas:

> GNU, which stands for Gnu's Not Unix, is the name for the complete Unix-compatible software system which I am writing so that I can give it away free to everyone who can use it.

En Github podemos además tener texto ~~tachado~~ o usar [emojis](http://www.webpagefx.com/tools/emoji-cheat-sheet) :octocat:.
Además podemos poner código con coloreado de sintaxis indicando el nombre del lenguaje:

```haskell
main :: IO ()
main = putStrLn "hello world"
```

*****

### Listas

Las listas no numeradas se indican con `-` (hay que dejar una linea en blanco con el párrafo anterior):

- Primer elemento
- Segundo elemento
  - Subelemento del segundo
- Tercer elemento

Si queremos que estén numeradas lo indicamos empezando con cualquier número seguido de un punto:

1. Primer elemento
2. Segundo elemento

En Github además tenemos listas de tareas:

- [ ] Una tarea por hacer
- [X] Una tarea completada

*****

### Imágenes

Para incluir imágenes lo hacemos con la sintaxis `![Texto alternativo](url)`:

<!--
Esto es un comentario! Quita la imagen cuando generes el documento
en pandoc o descárgala y pon la ruta local.
-->

![Meme de Doge de Wikimedia Commons](http://upload.wikimedia.org/wikipedia/en/5/5f/Original_Doge_meme.jpg)

*****

### Enlaces

Los enlaces se indican con una sintaxis similar `[texto](url)`. 
Quedan [así](//www.youtube.com/watch?v=dQw4w9WgXcQ). 
También puedes poner enlaces directamente entre ángulos:

<http://www.omfgdogs.com>

*****

## Cómo usarlo

Puedes usar Markdown en Github en un archivo con la extensión `.md` o en los comentarios, las [issues](//guides.github.com/features/issues) y Github lo interpretará automáticamente. 

### Pandoc

> :warning: Atención: Algunas de las características que funcionan en Github no funcionaran cuando generes el pdf

Para generar pdfs puedes utilizar [`pandoc`](http://pandoc.org). 
Por ejemplo, si quieres generar un pdf a partir de este fichero basta utilizar el comando:

```bash
pandoc markdown.md -o markdown.pdf
```

 Puede incluirse [información adicional](http://pandoc.org/MANUAL.html#variables-set-by-pandoc) en la cabecera (escrita en [YAML](http://yaml.org)) para controlar distintos aspectos de la generación del PDF.
 Además, si lo necesitas, puedes incluir código directamente en [LaTeX](//github.com/libreim/tutorials/blob/master/latex/ejemplo.tex)


> Pro tip: Puedes añadir esta función a tu archivo ~/.bashrc para facilitar este proceso de generación de un pdf.

```bash
## Pandoc processing: Input: source file. Output: pdf processed file with
## the name of the original input file but swapped extension to pdf
##
## Usage: Pandoc file\ name.md
function Pandoc() {
    var=`echo "$1" | rev |  cut -d'.' -f2- | rev`
    var="$var.pdf"
    var=${var//\\//}
    input=$1
    input=${input//\\//}
    echo "Reading and compiling: $input"
    pandoc --latex-engine=xelatex "$input" -o "$var" && echo "Done, output: $var"
}
```

Ejemplo de uso:

`Pandoc Apuntes\ asignatura.md `
