module SumOddNumbers where


-- Define an infinite list of odd numbers
odds = [n | n <- [1..], mod n 2 == 1]

sumOfOddNumbers n = n * n * n
