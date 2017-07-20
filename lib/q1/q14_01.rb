#
# 全て写経
#
@countries = ["Brazil", "Croatia", "Mexico",
                     "Cameroon", "Spain", "Netherlands",
                     "Chile", "Australia", "Colombia",
                     "Greece", "Cote d'loire", "Japan",
                     "Uruguay", "Costa Rica", "Englang",
                     "Italy", "Swizerland", "Ecuador",
                     "France", "Honduras", "Argentina",
                     "Bosnia And Herzegovina", "Iran", "Nigeria",
                     "Germany", "Portugal", "Ghana",
                     "USA", "Belgium", "Algeria",
                     "Russia", "Korea Republic"]

@is_used = Array.new(@countries.size, false)

def search(prev, depth)
  is_last = true
  @countries.each_with_index{|k, i|
    if k[0] == prev[-1].upcase then
      if !@is_used[i] then
        is_last = false
        @is_used[i] = true
        search(k, depth + 1)
        @is_used[i] = false
      end
    end
  }
  @max_depth = [@max_depth, depth].max if is_last
end

@max_depth = 0
@countries.each_with_index{|k, i|
  @is_used[i] = true
  search(k, 0)
  @is_used[i] = false
}

puts @max_depth