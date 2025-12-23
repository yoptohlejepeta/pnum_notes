#import "../../../components.typ": *

=== Gradientní metody

Pro *symetrické pozitivně definitní* matice je řešení soustavy $A x = b$ ekvivalentní hledání minima kvadratické funkce:
$ Phi(x) = 1/2 x^T A x - x^T b $

==== Metoda největšího spádu (Steepest Descent)
V každém kroku volíme směr poklesu jako záporný gradient funkce $Phi$, což odpovídá reziduu $r = b - A x$.
$ x^((k+1)) = x^((k)) + alpha_k r^((k)) $
[cite_start]Koeficient $alpha_k$ se volí tak, aby se minimalizovala hodnota funkce ve směru gradientu[cite: 2274].

#admonition(
  header: "Nevýhoda",
  body: "Konvergence může být pomalá (cik-cak efekt), pokud je matice špatně podmíněná.",
  type: WARNING,
)

==== Metoda sdružených gradientů (CG)
Efektivnější metoda, která místo směru gradientu volí směry $d^((k))$, které jsou navzájem *A-ortogonální* (sdružené):
$ (d^((i)))^T A d^((j)) = 0 quad "pro" i != j $
[cite_start]Teoreticky nalezne řešení nejvýše v $n$ krocích, v praxi se používá jako iterační metoda pro velké řídké matice[cite: 2274].
