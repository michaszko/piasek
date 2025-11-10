# Mszalik na Nieszpory z XIX Niedzieli po Zesłaniu Ducha Świętego

Wymagania

```
lilypond
# np. brew install lilypond
```

Budowanie

```
lualatex --shell-escape nieszpory.tex
```

Booklet

```
lualatex booklet.tex
```

Booklet w odcieniach szarości

```
gs \
  -sOutputFile=booklet-gray.pdf \
  -sDEVICE=pdfwrite \
  -sColorConversionStrategy=Gray \
  -dProcessColorModel=/DeviceGray \
  -dCompatibilityLevel=1.4 \
  -dNOPAUSE -dBATCH \
  booklet.pdf
```
