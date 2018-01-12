#アライアンス
def alliance (s, t)

  x = Array.new(t.length+1) do Array.new(s.length+1,0) end

  1.step(t.length) do |i|
    x[i][0] = x[i-1][0] - 2
  end

  1.step(s.length) do |i|
    x[0][i] = x[0][i-1] - 2
  end

  1.step(t.length) do |i|
    1.step(s.length) do |j|

      val = -1

      if s[j-1] == t[i-1] then
        val = x[i-1][j-1] + 2
      else
        if i >= 2 && j >= 2
          if s[j-1] == t[i-2] && t[i-1] == s[j-2]

            val = x[i-2][j-2] + 1

          end
        end

        if val < (x[i-1][j-1]-1)

          val = x[i-1][j-1]-1

        end

        if val < (x[i-1][j]-2)

          val = x[i-1][j]-2

        end

        if val < (x[i][j-1]-2)

          val = x[i][j-1]-2

        end
      end

      x[i][j] = val

    end
  end

  p(x[t.length][s.length])

end
