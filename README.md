# IOTICS utilisation patterns

This repo collects some of the most common utilisation patters of IOTICS.
The content is written in asciidoc and packaged to be rendered as a single book whose entry is [index.adoc](index.adoc)

## Build the book

The book can be compiled in html and pdf. Both scripts use asciidoctor:

1. Install asciidoctor: `gem install asciidoctor` and `gem install asciidoctor-pdf`
2. Run `to_html.sh` to generate the html book and `to_pdf.sh` to generate the pdf.

## Notes on how links are structured

To preserve references to anchors when compiled in a book and static links to files when browsed via github, the xref asciidoc macro is used by defining, conditionally, behaviour.

When in github, `include`s are replaced with `xref`s and for any `xref`, the two variables `:relfileprefix:` and `:relfilesuffix:` are defined in each file to support either book (with ref to anchors) or github (files).

```asciidoc
ifdef::env-github[]
:relfileprefix: 
:relfilesuffix: .adoc
endif::[]
```

```asciidoc
ifndef::env-github[]
:relfileprefix: _
:relfilesuffix: 
endif::[]
```
