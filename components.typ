#import "symbols.typ": *
#import "@preview/shadowed:0.2.0": shadowed

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
    let code_block_header = [ #HASKELL #h(1%) #text(font: "Raleway", weight: "semibold")[ #file_name ] ]
    context {
      code_block_header
      let line_length = measure(code_block_header).width + 5pt
      line(length: line_length, stroke: 0.5pt + gray)
    }
    let text = read("src/" + file_name)
    raw(text, lang: "hs")
  } else {
    code_body
  }
]


#let admonition(header: "nadpis", body: "text", type: HINT) = shadowed(
  radius: 5pt,
)[ #block(
  radius: 5pt,
  clip: true,
  breakable: false,
)[
  #stack(
    dir: ttb,
    spacing: 0pt,
    block(
      width: 100%,
      fill: type.color_secondary,
      inset: 8pt,
    )[*#type.symbol #text(font: "Raleway")[#header]*],
    block(
      width: 100%,
      inset: 8pt,
    )[#body],
  )
] ]

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
