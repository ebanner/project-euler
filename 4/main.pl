palindrome(N) :-
  number_codes(N, Cs),
  reverse(Cs, Cs).

main(MaxPalindrome) :-
  findall(
    Palindrome,
    (
      between(10, 999, N1),
      between(10, 999, N2),
      N is N1*N2,
      palindrome(N),
      Palindrome = N
    ),
    Palindromes
  ),

  max_list(Palindromes, MaxPalindrome).
