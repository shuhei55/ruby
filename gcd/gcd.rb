def max(x, y)
    if x >= y then 
        return x
    else
        return y
    end
end

def min(x, y)
    if x >= y then
        return y
    else
        return x
    end
end



def gcd(x, y)
    if x > y then 
        x = x % y
        if x == 0 then
            return y
        else
            gcd(x, y)
        end
    elsif y > x then
        y = y % x
        if y == 0 then
            return x
        else
            gcd(x, y)
        end
    else
        return x
    end
end
