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
        (@math.to_f + @literature.to_f + @english.to_f)/3
    end
end
listStudent = Array.new
def input(lt)
    puts "Nhap thong tin"
    print "Name: "
    name = gets.chomp
    name = name.strip
    print "\nscore math: "
    math = gets.chomp.to_f
    print "\nscore literature: "
    literature = gets.chomp.to_f
    print "\nscore english: "
    english = gets.chomp.to_f
    st = Student.new name,math,literature,english
    # p st.getScoreAGV
    lt.push st
    lt[0].getScoreAGV
end
def highestScore(lt)
    agv = 0.0
    p lt.length
    p lt[0].getScoreAGV
    for i in 0..(lt.length-1)
        tmp = lt[i].getScoreAGV
        if(agv < tmp)
            agv = tmp
        end
    end
    puts "Diem TB lon nhat #{agv}"
end
input(listStudent)
input(listStudent)
highestScore(listStudent)

