#課題その１
#ビンソート
def binsort(a)
    max_a = a.max
    count = Array.new(max_a + 1, 0)
    a.each do |i|
        count[i] = count[i] + 1
    end

    a.length.times do
        a.pop
    end

    (max_a + 1).times do |i|
        count[i].times do
            a.push(i)
        end
    end
    p(a)
end
