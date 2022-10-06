using Test
using Schulze

winningvotes = [
    00 20 26 30 22
    25 00 16 33 18
    19 29 00 17 24
    15 12 28 00 14
    14 23 21 31 00
]
@test schulze(winningvotes) == [5, 1, 3, 2, 4]
