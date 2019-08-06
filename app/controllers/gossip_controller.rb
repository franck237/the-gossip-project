class GossipController < ApplicationController
  def show
  	puts "$" * 60
  	@gossip_array = Gossip.all
  	@gossip_number = params[:num_gossip].to_i

  	puts params[:num_gossip]
  	puts "Voici le numéro du gossip choisi par l'utilisateur qui est stocké dans params #{params}"
  	puts @gossip_array.length
  	puts Gossip.first.title
  	if @gossip_number > 0 && @gossip_number <= @gossip_array.length
  		@gossip_selected = @gossip_array[@gossip_number-1]
  	 else
  		@gossip_selected = nil
  		puts "Il n'existe pas de gossip numéro #{@gossip_number}, veuillez choisir un numéro entre 1 et #{@gossip_array.length}"
  	end
  	puts "$" * 60
  end
end
