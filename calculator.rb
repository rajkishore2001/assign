class Calculator
  def input
   @x=gets.chomp.to_i
   @y=gets.chomp.to_i
   begin
 puts"enter operation \n 1.add 2.sub 3.mul 4.div 5.exit"
var=gets.chomp.to_i
case var
   when 1 then puts @x+@y
   when 2 then puts @x-@y
   when 3 then puts @x*@y
   when 4 then puts @x/@y
   when 5 then puts "thank you"
   else 
    puts "wrong operation"
end 
   end while var!=5
  end 
end  
calc=Calculator.new
calc.input
