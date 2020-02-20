puts "as simple of a calc as it gets "
print ">>"
input = gets.chomp.split(" ")
operand1 = input[0].to_i
operand2 = input[2].to_i
operator = input[1].to_sym


result = case operator
   when :+ then operand1 + operand2
   when :- then operand1 - operand2
   when :* then operand1 * operand2
   when :/ then operand1 / operand2
   when :% then operand1 % operand2   
   else 
     nil
   end
 puts result  
