class UserController < ApplicationController
  def show
  	puts "$" * 60
  	@user = User.find(params[:id])
  	@user_list = User.all
  	puts params
    puts "Voici le numéro du gossip stocké dans params #{params}"
    puts @user_list.length
    puts User.first.first_name
  	puts "$" * 60
	end
end