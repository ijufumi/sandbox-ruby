#
# 全て写経
#
i = 1
while i += 1
  str = ('%10.10f'%Math.sqrt(i)).sub('.', '')[0..9]
  break if str.split('').uniq.length == 10
end

puts i

i = 0
while i += 1
  str = ('%10.10f'%Math.sqrt(i)).sub('.', '')
  break if str.split('').uniq.length == 10
end

puts i