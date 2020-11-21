class Case < ApplicationRecord
	paginates_per 10
	validates :observation_date, presence: true
	
  def self.confirmed(observation_date, max_limit)
  	array = where(observation_date: observation_date).order(confirmed: "DESC").limit(max_limit)

  	json_output = array.group_by { |h| h[:observation_date] }.map do |date, rest|
										  				{ observation_date: date, countries: rest.map { |h| {country: h.country, confirmed:  h.confirmed, deaths: h.deaths, recovered: h.recovered } } }
														end
		return json_output
	end


end