#てっしゅー
def binsort(a)
    c = a.min
    d = a.max
    l = d-c
    e = Array.new(d-c+1, 0)
    for k in c..d
        e[k-c] = a.count(k)
    end
    p(e)
    p(a)
    s = 0
        for k in 0..(d-c)
            for i in s..(s+e[k]-1)
                a[i] = k + c
            end
        s = s + e[k]
        end
    p(a)
end
