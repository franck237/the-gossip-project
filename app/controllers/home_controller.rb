class HomeController < ApplicationController
  def index
  	puts "-" * 60
  	puts "Voici le premier autheur et son gossip :"
  	@gossip_list = Gossip.all
  	puts @gossip_list[0].user.last_name
  	puts "-" * 60
  end
end
