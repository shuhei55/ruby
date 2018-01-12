#ビンソート
def binsort(x)

    max = x.max

    numbers = Array.new(max+1,0)
    
    x.length.times do |i|

        numbers[x[i]] = numbers[x[i]]+1

    end

    count = 0

    (max+1).times do |i|
        numbers[i].times do
            x[count] = i
            count += 1
        end
    end
    p(x)
end
