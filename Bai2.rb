class Score
    def initialize math, literature, english
        @math = math
        @literature = literature
        @english = english
        @AGV = (math + literature + english)/3
    end
    def getMath
        @math
    end
    def getLiterature
        @getliterature
    end
    def getEnglish
        @english
    end
    def setMath score
        @math = score
    end
    def setLiterature score
        @literature = score
    end
    def setEnglish score
        @literature = score
    end
end
class Student
    def initialize name, math, literature, english
        @name = name
        @math = math
        @literature = literature
        @english =  english
    end
    def getName
        @name
    end
    def getScoreMath
        @math
    end
    def getScoreLiterature
        @literature
    end
    def getScoreEnglish
        @english
    end
    def setName value
        @name = value
    end
    def setScoreMath value
        @math = value
    end
    def setScoreLiterature value
        @literature = value
    end
    def setScoreEnglish value
        @english = value
    end
    def getScoreAGV
        (@math + @literature + @english)/3
    end
end
def inputInfor(h = {}) 
    name = gets.chomp
    math = gets.chomp.to_f
    literature = gets.chomp.to_f
    english = gets.chomp.to_f
    averange = (math + literature + english)/3
    h.store name,{"toan"=>math,"van" => literature, "anh" =>english, "TB"=> averange}
end
def highestScore(h = {})
    
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
        inputInfor(h)
    elsif k == "2"
        highestScore(h)
        puts "Nguoi co diem TB cao nhat: #{$bestName} voi so diem: #{$agv}"
    else
        break
    end
end

