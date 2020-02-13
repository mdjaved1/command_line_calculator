class Calculator
  
  def evaluate(string)
    arradd = []
    arrmul = []
    arrsub = []
    arrdiv = []
    str_i = string.split
    
    str_i.each_with_index do |ele , index|
      if ele == "+"
        arradd <<  str_i[index - 1] 
        arradd <<  str_i[index + 1] 
        return arradd.map(&:to_i).reduce(0, :+)
      elsif ele == "*"
        arrmul << str_i[index - 1] 
        arrmul << str_i[index + 1] 
        return arrmul.map(&:to_i).inject(:*)
      elsif ele == "-"
        arrsub <<  str_i[index - 1] 
        arrsub <<  str_i[index + 1]    
        return arrsub.map(&:to_i).inject(:-)
      elsif ele == "/"
        arrdiv << str_i[index - 1]
        arrdiv << str_i[index + 1].to_f 
        puts arrdiv
        return arrdiv.map(&:to_i).reduce(:/)
        
      else
      
      end
    end
    
  end
end