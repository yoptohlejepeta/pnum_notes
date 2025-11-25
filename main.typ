#import "components.typ": *
#import "template.typ": template


#set document(
  title: [POKROČILÉ NUMERICKÉ METODY],
  author: "Petr Kotlan",
)

#show: template

#set page(fill: PRIMARY, background: dot_pattern)
#set text(fill: white)
#title()

#pagebreak()

#set page(fill: none, background: none, numbering: none, margin: (top: 5%))
#set text(fill: black)
#pagebreak()
#set page(numbering: "1")
#outline(title: text(size: 24pt)[ Obsah ])

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
