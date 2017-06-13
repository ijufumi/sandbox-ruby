# ans=8

n = 20
m = 3

value = Array.new(1, (1..n).to_a)

count = 0
while value.size != n
  print(value)
  printf("\n")
  nextValue = []
  manCount = 0
  count += 1
  value.each{|e|
    if e.size >= 2 then
      if manCount > m then
        nextValue.push(e)
      else
        e.each_slice(e.size/2).to_a.each{|e2|
          manCount += 1
          nextValue.push(e2)
        }
      end
    else
      nextValue.push(e)
    end
  }
  value = nextValue
end

print(count)
