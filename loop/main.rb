def gcd(x, y)
    if x == y
        return x
    elsif x > y
        return gcd(x-y, y)
    else
        return gcd(x, y-x)
    end
end

def fact(n)
    if n == 0
        return 1
    else 
        return n * fact(n-1)
    end
end

def fib(n)
    if n == 0 || n == 1
        return 1
     else
        return fib(n-1) + fib(n-2)
     end
 end
 
 def comb(n, r)
    if r == 0 || r == n
        return 1
    else
        return comb(n-1, r) + comb(n-1, r-1)
    end
 end
 
 def binary(n)
    if n == 0
        return "0"
    elsif n == 1
        return "1"
    elsif n % 2 == 0
        return binary(n/2) + "0"
    else
        return binary(n/2) + "1"
    end
 end
 
 def perm1(a, b)
    if a.length == b.length
        p(b)
    else
        a.each_index do |i|
            if a[i] != nil
                x = a[i]
                a[i] = nil
                b.push(x)
                perm1(a, b)
                a[i] = x
                b.pop
            end
        end
    end
end

def dec(n, a)
    if n < 1
        p (a)
    else
        a.push(n)
        n.times do |i|
            dec(n-i-1, a)
        end
        a.pop
    end
end

$b = Array.new(0)

def list(a, n)
    if a.length < n then
        return 'むりだろ'
    else
        if n > 0
            a.each do |j|
                $b.push(j)
                list(a, n-1)
                $b.pop
            end
        else
            p ($b)
        end              
    end
end

def nlist(n, m)
    if n < m then
        return 'いやむりや'
    else
        if m > 0
            n.times do |i|
                $b.push(i+1)
                nlist(n, m-1)
                $b.pop
            end
        else
            p ($b)
        end
    end 
end










