class UserController < ApplicationController
  def author
  	puts "$" * 60
  	@user_array = User.all
  	@author_id = params[:num_author].to_i
  	puts params
  	@user_selected = @user_array[@author_id-1]
  	puts @user_selected
  	@user_gossip_array = []
  	@user_selected.gossips.each.with_index(1) do |gossip, index|
   	@user_gossip_array << gossip.title 
   	puts @user_gossip_array[0]
  	puts "$" * 60
  	end
	end
end