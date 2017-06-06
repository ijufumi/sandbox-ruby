cards = Array.new(100, false)

(2..100).each{|i|
  j = i - 1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
}

100.times{|i|
  puts i + 1 if !cards[i]
}