#
# 半分写経
#
$exchange = {500 => Array.new(5, 100), 100 => Array.new(2, 50), 50 => Array.new(5, 10)}

def calc(pattern)
  addMoney = []
  pattern.each_index {|i|
    exchange = $exchange[pattern[i]]
    if exchange != nil then
      tempArray = pattern.to_a
      tempArray.delete_at(i)
      tempArray.push(exchange)
      tempArray = tempArray.flatten!
      addMoney.push(tempArray)

      #p addMoney
    end
  }
  return addMoney
end

money = Array.new(1, Array.new(2, 500))

flag = true
idx = 0
while flag
  idx += 1
  addMoney = []
  flag = false
  money.each{|e|
    addMoney2 = calc(e)
    addMoney2.each{|e2|
      p e2
      if (e2.size >= 2 && e2.size <= 15) then
        flag |= true
        addMoney.push(e2)
      end
    }
  }
  addMoney.each{|e|
    money.push(e)
  }
end

p money.size
