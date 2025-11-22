factorial :: (Num a, Enum a) => a -> a
factorial n = product [1 .. n]

komb :: (Integral a) => a -> a -> a
komb n k = div (product [n - k + 1 .. n]) (factorial k)
