multiple(N) :-
  between(1, inf, N),
  (
    N mod 3 =:= 0 -> true ;
    N mod 5 =:= 0
  ).

main(Sum) :-
  findall(
    N,
    (
      between(1, 999, N),
      multiple(N)
    ),
    Multiples
  ),

  sum_list(Multiples, Sum).

