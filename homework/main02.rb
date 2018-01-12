#課題その２
#s, tには塩基列の文字列
def alliance (s, t)
    a = Array.new(t.length + 1) do Array.new(s.length + 1, 0) end

    1.step(t.length) do |i|
        a[i][0] = a[i-1][0] - 2
    end

    1.step(s.length) do |j|
        a[0][j] = a[0][j-1] - 2
    end

    1.step(t.length) do |i|
        1.step(s.length) do |j|
            val = -1
            if s[j-1] == t[i-1] then
                val = a[i-1][j-1] + 2
            else
                if i >= 2 && j >= 2
                    if s[j-1] == t[i-2] && t[i-1] == s[j-2]
                        val = a[i-2][j-2] + 1
                    end
                end
                if val < max(a[i-1][j-1]-1, a[i-1][j]-2, a[i][j-1]-2)
                    val = max(a[i-1][j-1]-1, a[i-1][j]-2, a[i][j-1]-2)
                end
            end
            a[i][j] = val
        end
    end
    p(a[1][1])
    p(a[2][2])
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
