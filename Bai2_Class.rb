class Student
    @@highest_score = 0
    def initialize name, math, literature, english
        @name = name
        @math = math
        @literature = literature
        @english = english
        if @@highest_score < (@math.to_f + @literature.to_f + @english.to_f)/3
            @@highest_score = (@math.to_f + @literature.to_f + @english.to_f)/3
        end
    end
    def get_name
        @name
    end
    def get_score_math
        @math
    end
    def get_score_literature
        @literature
    end
    def get_score_english
        @english
    end
    def set_name value
        @name = value
    end
    def set_score_math value
        @math = value
    end
    def set_score_literature value
        @literature = value
    end
    def set_score_english value
        @english = value
    end
    def self.get_hight_score
        @@highest_score
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
end

input(listStudent)
input(listStudent)
p "Diem so trung binh cao nhat la: #{Student.get_hight_score}"

