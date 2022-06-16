arr = Array.new 5
sum = 0
p "Enter values: "
for i in 0..4
    tmp = gets.chomp
    if tmp == ""
        arr[i] = 0
    else    
        arr[i] = tmp.to_i
        sum = sum + arr[i];
    end
end
print("array after enter values: ", arr)
print("\n")
print("sum = ", sum)
print("\n")
puts("Use Proc: ")
square = Proc.new do |n|
    n ** 2
end
for i in 0..4
    if(arr[i] == 6..7)
        print "#{arr[i]} "
    else
        print "#{square.call(arr[i])} "
    end
end
print "\n"
