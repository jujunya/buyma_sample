require 'csv'

#headerなし
#CSV.foreach('db/test.csv') do |row|
#  Category.create(top_category: row[0], sub_category: row[1])
#end

#headerあり
csv_data = CSV.read('db/test4.csv',headers: true)
csv_data.each do |data|
  Category.create!(data.to_hash)
end