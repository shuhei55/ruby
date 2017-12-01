Pixel = Struct.new(:r, :g, :b)

$img = Array.new(200) do 
           Array.new(300) do
               Pixel.new(255, 255, 255)
           end
       end

def pset(x, y, r, g, b, t)
    if 0 <= x && x <= 300 && 0 <= y && y <= 200 && 0 <= t && t <= 1  then
        if $img[y][x].r == 255 && $img[y][x].g == 255 && $img[y][x].b == 255 then
            $img[y][x].r = r
            $img[y][x].g = g 
            $img[y][x].b = b 
        elsif
            $img[y][x].b = $img[y][x].b * t + b * (1 - t) 
            $img[y][x].g = $img[y][x].g * t + g * (1 - t) 
            $img[y][x].b = $img[y][x].b * t + b * (1 - t) 
        end
    end
end

def writeimage(name)
    open(name, "wb") do |f|
        f.puts("P6\n300 200\n255")
        $img.each do |a|
            a.each do |p|
                f.write(p.to_a.pack('ccc'))
            end
        end
    end
end

def mypicture
    fillcircle(110, 100, 60, 255, 0, 0)
    fillcircle(180, 120, 40, 0, 0, 255)
    writeimage('t.ppm')
end

def fillcircle(x0, y0, rad, r, g, b)
    200.times do |y|
        300.times do |x|
            if (x - x0) ** 2 + (y - y0) ** 2 <= rad ** 2 then
                pset(x, y, r, g, b, 0.5)
            end
        end
    end
end

def clearimage
    200.times do |y|
        300.times do |x|
            $img[y][x].r = 255
            $img[y][x].g = 255
            $img[y][x].b = 255
        end
    end
end

def myanime
    count = 100
    20.step(80, 4) do |y|
        clearimage
        fillcircle(110, y, 30, 255, 0, 0)
        writeimage("a#{count}.ppm")
        count += 1
    end
    30.step(10, -1) do |r|
        clearimage
        fillcircle(110, 80, r, 0, 0, 255)
        writeimage("a#{count}.ppm")
        count += 1
    end
end

