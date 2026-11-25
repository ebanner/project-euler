multiple(N) :-
  between(1, 9, N),
  (
    N mod 3 =:= 0 ;
    N mod 5 =:= 0
  ).

main(Sum) :-
  findall(N, multiple(N), Multiples),
  sum_list(Multiples, Sum).

