# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'date'


CSV.foreach(Rails.root.join("db/seed_data/covid_19_data.csv"), headers: true) do |row|

	lastdate = row[4].gsub(/\//, '-')  
	@format_y = lastdate.match(/\d{4}-\d{2}-\d{2}/)

	if @format_y == nil
		@last_update = Date.strptime(lastdate, "%m-%d-%Y").to_s(:db)
	else
		@last_update = Date.strptime(lastdate, "%Y-%m-%d").to_s(:db)
	end
	
	observation_date = Date.strptime(row[1], "%m/%d/%Y").to_s(:db)
  	Case.find_or_create_by(
		observation_date: observation_date, 
		province: row[2],
		country: row[3],
		last_update: @last_update,
		confirmed: row[5], 
		deaths: row[6], 
		recovered: row[7]
  	)
 	puts row[0]
end