#
# 全て自力
#
def calculate(n)
  m = n * 3 + 1
  while m != 1
    if m.modulo(2) == 0 then
      m = m/2
    else
      m = m * 3 + 1
    end
    return true if m == n
  end
  return false
end

puts 2.step(10000, 2).count{|i|
  calculate(i)
}
