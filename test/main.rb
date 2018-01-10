def casino(n, c)
    p = Array.new(n+1) do Array.new(11, 0) end
    0.step(n) do |i|
        0.step(10) do |j| p[i][j] = calc(i, j, p) end
    end
    p[n][c]
end

def calc(i, j, p)
    if i == 0
        if j == 5 then 1.0 else 0.0 end
    elsif j <= 1
        p[i-1][j+1] * 0.55
    elsif j >= 9
        p[i-1][j-1] * 0.45
    else
        p[i-1][j-1] * 0.45 + p[i-1][j+1] * 0.55
    end
end

def normal(a)
    a.length.times do |i|
        c = a[i][i].to_f
        a.length.times do |j| a[i][j] = a[i][j] / c end
    end
    return a
end
