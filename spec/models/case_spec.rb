require 'rails_helper'
RSpec.describe Case, type: :model do
	before do 
		@case = create(:case) 
	end


	it "is valid with valid attributes" do
    expect(@case).to be_valid
  end
  it "is not valid without a observation_date" do
  	observation_date = Case.new(observation_date: " ")
  	expect(observation_date).to_not be_valid
	end
end
# t.date "observation_date"
#     t.string "province"
#     t.string "country"
#     t.date "last_update"
#     t.integer "confirmed"
#     t.integer "deaths"
#     t.integer "recovered"
