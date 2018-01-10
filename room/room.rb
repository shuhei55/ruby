def room(n)
    roomprice = Array.new(n+18, 0)
    roomsel = Array.new(n+1, 0)
    1.step(n) do |i|
        min = roomprice[i-1]+5000; s=1
        if min > roomprice[i-3]+12000 then min = roomprice[i-3]+12000; s=3 end
        if min > roomprice[i-7]+20000 then min = roomprice[i-7]+20000; s=7 end
        if min > roomprice[i-13]+33000 then min = roomprice[i-13]+33000; s=13end
        if min > roomprice[i-17]+40000 then min = roomprice[i-17]+40000; s=17 end
        roomprice[i] = min
        roomsel[i] = s
    end
    a = [roomprice[n]]
    while n > 0 do
        a.push(roomsel[n])
        n -= roomsel[n]
    end
    return a
end
