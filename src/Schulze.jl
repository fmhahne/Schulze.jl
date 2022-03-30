module Schulze

export schulze

function schulze(winningvotes)
    p = ifelse.(winningvotes .> winningvotes', winningvotes, 0)
    candidates = axes(winningvotes, 1)

    for i ∈ candidates
        for j ∈ candidates
            if i ≠ j
                for k ∈ candidates
                    if i ≠ k && j ≠ k
                        p[j, k] = max(p[j, k], min(p[j, i], p[i, k]))
                    end
                end
            end
        end
    end

    return sort(candidates, lt=(i, j) -> p[i, j] > p[j, i])
end
end
