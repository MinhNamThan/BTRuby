arr = Array.new 5
for i in 0..4
    tmp = gets.chomp
    if tmp == ""
        arr[i] = 0
    else
        arr[i] = tmp.to_i
    end
end
p arr
sum = 0
arr.each{|e| sum += e}
p "sum = #{sum}"
square = Proc.new do |n|
    if n == 6 or n == 7
        n
    else
        n ** 2
    end
end
p "after proc"
arr.each{|e| puts square.call(e)}