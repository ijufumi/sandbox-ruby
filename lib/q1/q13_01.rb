#
# 全て写経
#
count = 0
(0..9).to_a.permutation {|r, e, a, d, w, i, t, l, k, s|
  next if r == 0 or w == 0 or t == 0 or s == 0
  read = 1000 * r + 100 * e + 10 * a + d
  write = 10000 * w + 1000 + r + 100 * i + 10 * t + e;
  talk = t * 1000 + a * 100 + l * 10 + k
  skill = s * 10000 + k * 1000 + i * 100 + l * 10 + l

  if read + write + talk == skill then
    count += 1
  end
}

puts count