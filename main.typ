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


#include "content/lin_soustavy/lin_soustavy.typ"


= Test haskell code block

Příliš žluťoučký kůň úpěl ďábelské ódy.

#code_block(file_name: "komb.hs")
