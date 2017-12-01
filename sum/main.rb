$x = 0
$y = 0
$a = Array.new(0)

def check
    return $x
end

def sum(y)
    $x += y
    $a.push('+', y)
    $y = $x; return $x
end

def reset
    $y = $x
    $a.push('/reset/', 0)
    $x = 0
end

def dec(y)
    $x -= y
    $a.push('-', y)
    $y = $x; return $x
end

def undo
    $x = $y; 
    $a.push('/undo/', $x)
    return $x
end

def list
    $a.each do |i|
        print i
    end
    return $x
end

def hoge
    a = Array.new(0)
    a.push(0.4)
    print a[0]
end
