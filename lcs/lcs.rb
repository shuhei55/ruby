def lcs(s, t)
    a = Array.new(t.length + 1) do Array.new(s.length+1, 0) end
    1.step(t.length) do |i|
        1.step(s.length) do |j|
            val = -1
            if s[j-1] == t[i-1] then
                val = a[i-1][j-1] + 1
            end
            if a[i][j-1] > val then val = a[i][j-1] end
            if a[i-1][j] > val then val = a[i-1][j] end
            a[i][j] = val
        end
    end
    return a[t.length][s.length]
end

#課題その２

def alliance (s, t)
    #盤面づくり
    a = Array.new(t.length + 1) do Array.new(s.length + 1, 0) end
    1.step(t.length) do |i|
        1.step(s.length) do |j|
            val = -1
            if s[j-1] == t[i-1] then 
                val = a[i-1][j-1] + 2
            else
                if s[j-1] == t[i] && t[i-1] == s[j]
                    val = a[i-2][j-2] + 1
                end
                if val < max(a[i-1][j-1]-1, a[i-1][j]-2, a[i][j-1]-2)
                    val = max(a[i-1][j-1]-1, a[i-1][j]-2, a[i][j-1]-2)
                end
            end
            a[i][j] = val
        end
    end
    p(a[t.length][s.length])
end


def max(a, b, c)
    if a >= b && a >= c then
        return a
    elsif b >= a && b >= c then
        return b
    else
        return c
    end
end
