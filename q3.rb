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
end

new_student = Students.new
puts new_student.student_details("harshit", 24, 34)
puts new_student.passorfail("harshit")

