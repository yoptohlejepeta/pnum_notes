#import "symbols.typ": *

#let template(doc) = [
  #let mainFont = "Goga"
  #let mathFont = "TeX Gyre DejaVu Math"

  #show title: it => align(center + horizon, text(font: mainFont, size: 34pt, weight: "extrabold")[#it])
  #show heading: set text(font: mainFont)
  #show heading: set block(spacing: 1.5em)
  #show heading.where(level: 1, outlined: true): it => align(horizon)[
    #pagebreak(to: "odd", weak: true)
    #text(size: 30pt)[
      #set page(fill: rgb(220, 224, 232), numbering: none)
      #it]
  ]

  #show heading.where(level: 2): it => [ #pagebreak() #text(size: 18pt)[#it] ]
  #show heading.where(level: 3): set text(size: 14pt)
  #show math.equation: set text(font: mathFont)
  #set text(font: "Merriweather", lang: "cs")
  #show raw: set text(font: "MartianMono NF")
  #show outline: set text(font: mainFont)
  #show outline.entry: it => block[
    #h(1.5em * (it.level - 1))
    #link(it.element.location())[
      #it.element.body
      #h(1%)
      #text()[/]
      #h(1%)
      #context text(fill: PRIMARY)[ #counter(page).at(it.element.location()).first() ]
    ]
  ]
  #show outline.entry.where(level: 1): it => text(font: mainFont, size: 18pt, weight: "semibold")[
    #v(1%)
    #line(length: 80%, stroke: PRIMARY)
    #v(1%)
    #it
    #v(2%)
  ]
  #show outline.entry.where(level: 2): it => text(weight: "semibold")[#it]

  #doc
]
