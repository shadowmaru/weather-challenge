# frozen_string_literal: true

module DashboardHelper

  def fahrenheit_to_celsius(temperature)
    ((temperature - 32) * 5/9).round(2).to_f
  rescue
    'Erro ao obter a temperatura'
  end
end
