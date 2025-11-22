#import "components.typ": *

#show title: it => align(center + horizon, text(font: "Raleway", size: 34pt, weight: "extrabold")[#it])
#show heading: set text(font: "Raleway")
#show heading: set block(spacing: 1.5em)
#show heading.where(level: 1, outlined: true): it => align(horizon)[
  #pagebreak(to: "odd", weak: true)
  #text(size: 30pt)[
    #set page(fill: rgb(220, 224, 232), numbering: none)
    #it]
]

#show heading.where(level: 2): it => [ #pagebreak() #text(size: 18pt)[#it] ]
#show heading.where(level: 3): set text(size: 14pt)
#set text(font: "New Computer Modern", lang: "cs")
#show raw: set text(font: "MartianMono NF")
#show math.equation: set text(font: "TeX Gyre DejaVu Math")
#set outline.entry(fill: line(length: 100%, stroke: (dash: "loosely-dotted")))
#show link: it => text(fill: BLUE, [ #underline[#it] ])

#set document(
  title: [POKROČILÉ NUMERICKÉ METODY],
  author: "Petr Kotlan",
)



#set page(fill: PRIMARY, background: dot_pattern)
#set text(fill: white)
#title()

#align(center)[
  #text(font: "Raleway", size: 15pt, weight: "bold")[

    #line(length: 50%, stroke: white)
    // KI/PNUM \
    Petr Kotlan

  ]
]

#pagebreak()

#set page(fill: none, background: none)
#set text(fill: black)
#outline(title: text(size: 24pt)[  Obsah ])
#set page(numbering: "1")

= Řešení soustav lineárních rovnic

== Přímé metody

=== Gaussova eliminace

#admonition(
  header: "Vlastní čísla",
  body: [
    Vlastní vektor lineárního operátoru $A$ je
    takový nenulový vektor $u$, pro který
    existuje číslo $lambda$ tak, že platí:

    $ A dot u = λ u $

    Číslo $lambda$ se nazývá vlastní číslo (též
    charakteristické číslo) operátoru $A$ a $u$
    vlastní vektor operátoru $A$ příslušný vlastní hodnotě $lambda$.
  ],
  type: HINT,
)
#admonition(header: "Warning", body: "popis", type: WARNING)
#admonition(header: "Warning", body: "popis", type: WARNING)

#columns(2)[

  #admonition(header: "Warning", body: "popis", type: WARNING)
  #colbreak()
  #admonition(header: "Warning", body: "popis", type: WARNING)
]

=== LU rozklad

=== Choleského faktorizace

=== QR faktorizace


== Iterativní metody

=== Jacobiho metoda

=== Gaussova-Seidlova metoda

=== SOR

=== Gradientní metoda


= Test haskell code block

Příliš žluťoučký kůň úpěl ďábelské ódy.

#code_block(file_name: "komb.hs")

