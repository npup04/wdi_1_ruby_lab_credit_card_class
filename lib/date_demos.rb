require 'date'

#Demo 1
today = Date.today
future_date = Date.parse("Apr 2016")

puts future_date > today #=> true
puts future_date < today #=> false
puts future_date == today #=> false

#Demo 2
puts Date.parse("Apr 2016").strftime("%Y") #=> string "2016"
puts Date.parse("Apr 2016").strftime("%y") #=> string "16"
puts Date.parse("Apr 2016").strftime("%y").to_i #=> Fixnum 16
