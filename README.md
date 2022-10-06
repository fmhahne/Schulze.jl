# Schulze.jl

Schulze method implementation in Julia.

## Example

```julia
using Schulze

winningvotes = [  0 20 26 30 22
                 25  0 16 33 18
                 19 29  0 17 24
                 15 12 28  0 14
                 14 23 21 31  0 ]
# 5×5 Matrix{Int64}:
#   0  20  26  30  22
#  25   0  16  33  18
#  19  29   0  17  24
#  15  12  28   0  14
#  14  23  21  31   0

schulze(winningvotes)
# 5-element Vector{Int64}:
#  5
#  1
#  3
#  2
#  4
```
