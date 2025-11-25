
#let HASKELL_COLOR = rgb("#453A62")
// #let HASKELL = text(HASKELL_COLOR)[  ]
#let HASKELL = box(image("assets/haskell-logo.png"), height: 11pt, baseline: 2pt)


#let BLUE = rgb(30, 102, 245)
#let BLUE_SECONDARY = rgb(30, 102, 245, 90)
#let GREEN = rgb(64, 160, 43)
#let GREEN_SECONDARY = rgb(64, 160, 43, 90)
#let RED = rgb("#d20f39")
#let YELLOW = rgb(223, 142, 29)
#let YELLOW_SECONDARY = rgb(223, 142, 29, 90)

#let TEXT = rgb(76, 79, 105)

#let PRIMARY = BLUE

#let HINT = (
  color: BLUE,
  symbol: box(image("assets/light-bulb.png"), height: 15pt, baseline: 3pt),
  color_secondary: BLUE_SECONDARY,
)
#let WARNING = (
  color: YELLOW,
  symbol: box(image("assets/warning.png"), height: 15pt, baseline: 3pt),
  color_secondary: YELLOW_SECONDARY,
)
