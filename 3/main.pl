prime(N) :-
  Limit is floor(sqrt(N)),
  forall(
    between(2, Limit, D),
    N mod D =\= 0
  ).

prime_factor(Num, PF) :-
  Limit is floor(sqrt(Num)),
  between(2, Limit, PF),
  prime(PF),
  Num mod PF =:= 0.

main(Num, Result) :-
  findall(
    P,
    prime_factor(Num, P),
    PrimeFactors
  ),

  max_list(PrimeFactors, Result).

