class TemperatureService
    def self.get_weather(city)
      weather = Openweather2.get_weather(city: city || 'São Paulo, BR', units: 'imperial')
      weather = weather.instance_values
      weather['temperature_in_celsius'] = fahrenheit_to_celsius(weather['temperature'])
      weather['min_temperature_in_celsius'] = fahrenheit_to_celsius(weather['min_temperature'])
      weather['max_temperature_in_celsies'] = fahrenheit_to_celsius(weather['max_temperature'])
      weather
    rescue StandardError => e
      weather = { error: 'Error to retrieve data' }
      weather
  end

  def self.fahrenheit_to_celsius(fahrenheit)
    ((fahrenheit - 32) / 1.8).round(2)
  rescue StandardError => e
    "Error to convert fahrenheit to celsius. Details: #{ e.message }"
  end
end 
