class PagesController < ApplicationController
	def home
		@weather_lookup = Weatherlookup.new
	end

end
