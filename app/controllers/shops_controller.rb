class ShopsController < ApplicationController
	
	def index
		@shops = Shop.all
	end

	def search
		if
			location = params[:location]
		    parameters = { term: 'coffee', limit: 10 }
		    @founded = Yelp.client.search( location, parameters )
	   	else
	   		redirect_to root_path
	   	end
  	end

end

