class DashboardController < ApplicationController
  helper DashboardHelper

  def index
    @weather = Openweather2.get_weather(city: 'Sao Paulo,BR', units: 'imperial')
  end
end
