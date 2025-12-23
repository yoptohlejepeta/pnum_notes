#import "../../../components.typ": *

=== Jacobiho metoda

Metoda je založena na vyjádření $i$-té neznámé z $i$-té rovnice. Pro výpočet $x_i^((k+1))$ používáme hodnoty z *předchozí* iterace $x^((k))$.

$ x_i^((k+1)) = 1/a_(i i) (b_i - sum_(j=1, j!=i)^n a_(i j) x_j^((k))) $

#admonition(
  header: "Konvergence",
  body: "Jacobiho metoda konverguje, pokud je matice A *ostře diagonálně dominantní*.",
  type: HINT,
)

=== Gaussova-Seidelova metoda

Vylepšení Jacobiho metody. Při výpočtu $x_i^((k+1))$ využíváme již spočtené *nové* hodnoty $x_1^((k+1)), ..., x_(i-1)^((k+1))$ z aktuální iterace.

$ x_i^((k+1)) = 1/a_(i i) (b_i - sum_(j=1)^(i-1) a_(i j) x_j^((k+1)) - sum_(j=i+1)^n a_(i j) x_j^((k))) $

#admonition(
  header: "Konvergence",
  body: "Gaussova-Seidelova metoda konverguje pro *ostře diagonálně dominantní* matice nebo pro *symetrické pozitivně definitní* matice[cite: 5].",
  type: HINT,
)
