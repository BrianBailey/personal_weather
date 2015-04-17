class WeatherLookup
	def fetch_weather
    HTTParty.get("http://capitolwords.org/api/1/text.json?phrase=education&state=MO&page=1&apikey=8afe89c570dc484591ba42c38931b2b0")
 	end

 	attr_accessor :title, :speaking

 	def initialize
 		weather_hash = fetch_weather
 		assign_values(weather_hash)
 	end

 	def assign_values(weather_hash)
 		hourly_forcast_response = weather_hash.parsed_response['results'].first
 		self.title = hourly_forcast_response['title']
 		self.speaking = hourly_forcast_response['speaking']
 	end





end



