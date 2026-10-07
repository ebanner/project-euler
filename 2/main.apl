A ← ↑ (1 1) (1 0)
x ← 1 0
n ← 32

nums ← ⊃¨ +.× \ (⊂ x) , (n ⍴ ⊂ A)

mask ← 0 = 2 | nums

+/ mask / nums
