#import "../../../components.typ": *

=== Choleského faktorizace

Jedná se o speciální případ LU rozkladu pro *symetrické pozitivně definitní*
matice (SPD). Pro takové matice existuje rozklad: $ A = L L^T $ [cite_start]kde
$L$ je dolní trojúhelníková matice s kladnými prvky na diagonále[cite: 5].

#admonition(
  header: "Vlastnosti",
  body: [
    - Je přibližně dvakrát rychlejší než obecný LU rozklad (vyžaduje cca $n^3/6$
      operací).
    - Je numericky velmi stabilní (není potřeba pivotizace).
    - Pokud algoritmus selže (např. odmocnina ze záporného čísla), matice není
      pozitivně definitní.
  ],
  type: HINT,
)
