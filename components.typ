#import "symbols.typ": *

#let code_block(
  code_body: none,
  file_name: none,
) = block(
  breakable: false,
  fill: rgb(239, 241, 245),
  stroke: (
    left: 2pt + HASKELL_COLOR,
  ),
  inset: 8pt,
  radius: 5pt,
  width: 100%,
)[
  #if file_name != none {
    let code_block_header = [ #HASKELL #h(1%) #text(
        font: "Goga Mono",
        weight: "semibold",
      )[ #file_name ] ]
    code_block_header
    v(1%)

    let text = read("src/" + file_name)
    raw(text, lang: "hs")
  } else {
    code_body
  }
]


#let admonition(header: "nadpis", body: "text", type: HINT) = block(
  radius: 5pt,
  width: 100%,
  inset: 10pt,
  stroke: (
    left: 2pt + type.color,
  ),
  clip: true,
  breakable: false,
  fill: type.color_secondary,
)[
  *#type.symbol #text(font: "Goga")[#header]*

  #v(1%)

  #body
]

#let dot_pattern = {
  let dot_size = 5pt
  let spacing = 30pt
  let dots_per_row = 50
  let dots_per_col = 70

  place(
    top + left,
    {
      for row in range(dots_per_col) {
        for col in range(dots_per_row) {
          place(
            top + left,
            dx: col * spacing,
            dy: row * spacing,
            circle(radius: dot_size / 2, fill: rgb(255, 255, 255, 15%), stroke: none),
          )
        }
      }
    },
  )
}
