class Students
    @@arr =[]
    def student_details(name, rollno, marks)
        
        @@arr << {name: name, rollno: rollno, marks: marks}
        return @@arr    
    end
    def passorfail(name_of_student)
        @@arr.each do |hash|
            if hash[:name] == name_of_student
                if hash[:marks] >= 35
                    return "passed"
                else
                    return "failed"
                end
            else
                return "Student not found"    
            end    
            break
        end
        
    end
    def grades_by_switch(name_of_student)
        @@arr.each do |hash|
            if hash[:name] == name_of_student
                case hash[:marks]
                when 80..100
                    return "Grade : A"
                when 60..80
                    return "Grade : B"
                when 40..60
                    return "Grade : C"
                else
                return  "Grade : D"
                end       
            else
                return "Student not found"    
            end    
            break
        end
    end
    def add_percentage_to_hash
        @@arr.each do |hash|
            hash[:percentage] = "#{hash[:marks]}%"
        end
    end
end

new_student = Students.new
puts new_student.student_details("harshit", 24, 40)
puts new_student.student_details("Dinesh", 25, 50)
puts new_student.passorfail("harshit")
puts new_student.grades_by_switch("harshit")
puts new_student.add_percentage_to_hash
