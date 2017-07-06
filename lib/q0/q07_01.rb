require 'date'

(Date.parse('1964-10-10')..Date.parse('2020-07-24')).each{ |date|
  dateString = date.strftime("%Y%m%d")
  dateNum = dateString.to_i.to_s(2)

  revDateNum = dateNum.reverse().to_i(2).to_s
  puts dateString if dateString == revDateNum
}
