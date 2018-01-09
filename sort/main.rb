
#交換
def swap(a, i, j)
    x = a[i]; a[i] = a[j]; a[j] = x
end

#バブル整列
def bubblesort(a)
    done = false
    while !done do
        done = true
        0.step(a.length-2) do |i|
            if a[i] > a[i+1] then 
                swap(a, i, i+1) 
                done = false 
            end
        end
    end
end

#選択整列
def selectionsort(a)
    0.step(a.length-2) do |i|
        k = arrayminrange(a, i, a.length-1)
        swap(a, i, k)
    end
end

def arrayminrange(a, i, j)
    p = i
    min = a[p]
    i.step(j) do |k|
        if min > a[k] then 
            p = k 
            min = a[k] 
        end
    end
    return p
end

#挿入整列
def insertionsort(a)
    1.step(a.length-1) do |i|
        x = a[i] 
        k = 0
        while k < i && a[k] <= x do 
            k = k + 1 
        end
        arrayshiftrange(a, k, i-1) 
        a[k] = x
    end
end

def arrayshiftrange(a, i, j)
    j.step(i, -1) do |k| 
        a[k+1] = a[k] 
    end
end

#マージ整列
def mergesort(a, i, j)
    if j <= i then
        # do nothing
    else
        k = (i + j) / 2
        mergesort(a, i, k)
        mergesort(a, k+1, j)
        b = merge(a, i, k, a, k+1, j)
        b.length.times do |l|
            a[i+l] = b[l]
        end
    end
end

def merge(a1, i1, j1, a2, i2, j2)
    b = []
    while i1 <= j1 || i2 <= j2 do
        if i1 > j1 || i2 <= j2 && a1[i1] > a2[i2] then
            b.push(a2[i2])
            i2 = i2 + 1
        else
            b.push(a1[i1])
            i1 = i1 + 1
        end
    end
    return b
end

#クイックソート
def quicksort(a, i, j)
    if j <= i then
        # do nothing
    else
        pivot = a[j]
        s = i
        i.step(j-1) do |k|
            if a[k] <= pivot then
                swap(a, s, k)
                s = s + 1
            end
        end
        swap(a, j, s)
        quicksort(a, i, s-1)
        quicksort(a, s+1, j)
    end
end

#ビンソート
def binsort(a)
    count = Array.new(10, 0)
    c = Array.new
    a.each do |i|
        count[i] = count[i] + 1
    end
    10.times do |i|
        count[i].times do
            c.push(i)
        end
    end
    p(c)
    p(a)
    a = c
    p(a)
    p(c)
    return 0
end


#時間計測用
def randarray(n)
    return Array.new(n) do rand(10000) end
end

def bench(count)
    t1 = Process.times.utime
    count.times do yield end
    t2 = Process.times.utime
    puts t2 - t1
end





















