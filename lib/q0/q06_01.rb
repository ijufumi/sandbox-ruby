#
# 全て自力
#
def calculate(n)
  m = n
  flag = false
  while true
    if flag
      if m == n or m == 1 then
        break
      else
        if m.modulo(2) == 0 then
          m = m/2
        else
          m = m * 3 + 1
        end
      end
    else
      if m == n then
        flag = true
        m = m * 3 + 1
      else
        if m.modulo(2) == 0 then
          m = m/2
        else
          m = m * 3 + 1
        end
      end
    end
  end
  return m
end

cnt = 0
(2..10000).each{|i|
  if i.modulo(2) != 0 then
    next
  end
  m = calculate(i)
  if m == i then
    cnt = cnt + 1
  end
}

puts cnt
