module Api
  	module V1
		class Api::V1::CasesController < ApplicationController

			def index
        @case = Case.order(confirmed: "DESC").page params[:page]
        render json: @case
      end


			#GET /top/confirmed?observation_date=yyyy-mm-dd&max_results=2
			# Results
			# {
			# 	"observation_date": "yyyy-mm-dd",
			# 	"countries": [
			# 		{
			# 			"country": "Mainland China", 
			# 			"confirmed": 15,
			# 			"deaths": 2,
			# 			"recovered": 7
			# 		},
			# 		{
			# 			"country": "Mainland China", 
			# 			"confirmed": 15,
			# 			"deaths": 2,
			# 			"recovered": 7
			# 		}
			# 	]

	 		def top
       	if params[:observation_date] != '' && params[:max_limit] != ''

        	@top = Case.confirmed(params[:observation_date], params[:max_limit])

        	render json: @top
      	else
      		@json_output = { message: "Error" }
      		render json: @json_output, status: :unprocessable_entity
       	end 

	    end
		end
		# end class
	end
end

