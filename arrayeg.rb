class Arrayexample 
    def operations
       numarray=Array.new
       sum=0.00
       begin 
        puts "1. Add value 2. minimum 3. maximum 4.sum 5. average 6. search by index 7.display 8.delete value by index 9. delete value 10. exit"
        var=gets.chomp.to_i
                sum=0.00
        case var
        when 1 then numarray<< gets.chomp.to_i
        when 2 then puts numarray.min
        when 3 then puts numarray.max
        when 4 
            for i in numarray
                sum=sum+i;
            end 
            puts sum
        when 5 
            for i in numarray
                sum=sum+i;
            end 
            puts sumputs sum/2
        when 6
            element=gets.chomp.to_i 
            for i in 0..numarray.size do
                puts i if a[i]==element
            end
        when 7  then puts numarray
        when 8 then numarray.delete(gets.chomp.to_i)
        when 9 then numarray.delete(gets.chomp.to_i)
        when 10 then puts "thankyou"
        else puts "wrong option"
        end
        end while var!=10
    end
end
ob=Arrayexample.new
ob.operations
