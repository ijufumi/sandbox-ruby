def clear_zero(s)
  s.gsub(/([^0-9]?)0{1,3}([0-9]{1,})/, "\\1\\2")
end

def clear(s)
  s.gsub(/\+0{,3}([1-9]*)/, "+\1").gsub(/-0{,3}([1-9]*)/, "-\1").gsub(/\*0{,3}([1-9]*)/, "*\1").gsub(/\/0{,3}([1-9]*)/, "/\1")
end
op = Array["*", ""]

for num in 1000...9999 do
  num_s = num.to_s
  for a in op do
    for b in op do
      for c in op do
        test = num_s[0] + a + num_s[1] + b + num_s[2] + c + num_s[3]
        if (test.length > 4)
          #printf("#{test}\n")
          test = clear_zero(test)
          result = eval(test)
          #printf("#{result}\n")
          if num_s.reverse == result.to_s
            printf("#{num_s} (#{result})\n")
          end
        end
      end
    end
  end
end

