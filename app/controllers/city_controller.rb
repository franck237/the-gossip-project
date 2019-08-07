class CityController < ApplicationController
  def show
  	@city = City.find(params[:id])
  	puts "-" * 60
  	puts "Voici la premiere ville :"
  	@city_list = City.all
  	puts @city_list[0].name
  	puts "-" * 60
  end
end
