
class Student
    @@count=0
    attr_accessor :name,:rollno,:branch,:state,:cgpa 
    def input 
        puts "eneter rollno,name,state,branch,cgpa"
        @rollno=gets.chomp.to_i  
        @name=gets.chomp 
        @state=gets.chomp 
        @branch=gets.chomp 
        @cgpa=gets.chomp.to_f
        @@count=@@count+1
    end
    def output
        puts "name:#{@name}\nrollno:#{@rollno}\nbranch:#{@branch}\nstate:#{@state}\ncgpa:#{@cgpa}\n"
    end
end
       
       
        arr=Array.new
        begin
        puts "1. Add new student 2. display all students 3. display student by branch 4. display
students by state 5. Search students by roll number 6. search by part of the name, 7.
delete by roll number 8. count and display number of students by state 9. count and
display number of students by branch 10. exit"
        puts "enter choice"
        var =gets.chomp.to_i
        case var
        when 1
        ob=Student.new
           ob.input
           arr.push(ob)
        when 2 
            for i in arr
              i.output
            end
        when 3
              puts "enter the branch you want to search"
              branch=gets.chomp
              for i in arr
                  if i.branch.eql?branch
                      i.output
                  end
              end
        when 4
              puts "enter the state you want to search"
              state=gets.chomp
               for i in arr
                if i.state.eql?state
                      i.output
                end
               end
        when 5
               puts "enter the rollno you want to search"
               roll=gets.chomp.to_i
                for i in arr
                  if i.rollno==roll
                      i.output
                  end
                end
        when 6
             puts "enter the subname you want to search"
               sbname=gets.chomp
               for i in arr
                 if i.name.include?(subname)
                      i.output
                 end
               end
        when 7
             puts "enter the rollno you want to delete"
             roll=gets.chomp.to_i
              for i in arr
                if i.rollno==roll
                 arr.delete(i)
                end
              end
        when 8
           b={}
             for i in arr
               if b.has_key?(i.state)
                b[i.state]+=1
               else
                b[i.state]=1
               end
             end
            for i in b.keys
              puts "#{b[i]} from #{i}"
            end
        when 9
           b={}
            for i in arr
              if b.has_key?(i.branch)
                 b[i.branch]+=1
              else
                 b[i.branch]=1
               end
            end
    
            for i in b.keys
              puts "#{b[i]} from #{i}"
            end
        when 10 then puts "thank you"
        else puts "wrong input"
        end 
    end while var!=10

