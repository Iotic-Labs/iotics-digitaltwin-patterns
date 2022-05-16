# IOTICS Digital Twin Patterns

This repo collects some of the most common utilisation patters of IOTICS.
The content is written in asciidoc and packaged to be rendered as a single book whose entry is [index.adoc](index.adoc)

## Build the book

The book can be compiled in html and pdf. The scripts to compile the book are in the `book/` directory.
Both scripts use asciidoctor:

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


## Versioning

The book uses git tags as versioning mechanism. The current version is also stored in `index.adoc` in the `:revnumber:` property. The script `bin/version.sh` can help creating a new version of the book sources.

This book uses semantic versioning as following:

* the major version should be increased when existing patterns are changed or the amount changes in the book warrants a new edition.
* the minor version should be increased when new patterns are added or existing are substantially modified (still retaining the same semantic).
* the build version should be increased for typos or small changes not needing users to get a newer version of the book.

## Versions log

* Version 1.0.0: initial draft, reviewed and approved.
* Version 1.1.0: added "Asset Aggregator Twin" and "Master Asset Twin" patterns.
