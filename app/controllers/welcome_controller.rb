class WelcomeController < ApplicationController
  def get_user
  	puts "$" * 60
  	@first_name = params[:first_name]
  	puts params[:first_name]
  	puts "Voici l'URL rentré par l'utilisateur qui est stocké dans params #{params}"
  	puts "$" * 60
  end
end
