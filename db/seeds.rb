require 'csv'

#headerなし
#CSV.foreach('db/test.csv') do |row|
#  Category.create(top_category: row[0], sub_category: row[1])
#end

#headerあり
csv_data = CSV.read('db/test.csv',headers: true)
csv_data.each do |data|
  Size.create!(data.to_hash)
end

csv_data = CSV.read('db/test2.csv',headers: true)
csv_data.each do |data|
  Size.create!(data.to_hash)
end