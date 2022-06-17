def input_infor(h = {}) 
    name = gets.chomp
    math = gets.chomp.to_f
    literature = gets.chomp.to_f
    english = gets.chomp.to_f
    averange = (math + literature + english)/3
    h.store name,{"toan"=>math,"van" => literature, "anh" =>english, "TB"=> averange}
end
def highest_score(h = {})
    
    for key in h.keys
        p $agv
        if h[key]["TB"] > $agv
            $agv = h[key]["TB"]
            $bestName = key
        end
    end
    
end
h = {}
$agv = 0.0
$bestName = ""

while 1 do
    puts "1.Input"
    puts "2.find highest student"
    puts "others to finish"
    k = gets.chomp
    if k == "1"
        input_infor(h)
    elsif k == "2"
        highest_score(h)
        puts "Nguoi co diem TB cao nhat: #{$bestName} voi so diem: #{$agv}"
    else
        break
    end
end

