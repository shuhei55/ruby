#a = Array.new(7) do Array.new(9, 0) end
def map(a)
    0.step(6) do |i| a[i][0] = 0 end
    0.step(8) do |i| a[0][i] = 0 end
    a[1][5] = a[3][3] = a[4][6] = a[5][2] = 0
    a[1][1] = 1
    1.step(6) do |i|
        1.step(8) do |j|
            if i == 1 && j == 1 then
            elsif a [i][j] == 0 then
                a[i][j] = 0
            else
                a[i][j] *= a[i-1][j] + a[i][j-1] + a[i-1][j-1]
            end
        end
    end
    return a[6][8]
end

