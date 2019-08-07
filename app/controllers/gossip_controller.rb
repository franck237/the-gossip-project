class GossipController < ApplicationController
  def show
  	puts "$" * 60
  	@gossip = Gossip.find(params[:id])
    @gossip_list = Gossip.all
    #@gossip_number = params[:id]
  	#@gossip_number = params[:num_gossip].to_i

  	puts params
  	puts "Voici le numéro du gossip stocké dans params #{params}"
  	puts @gossip_list.length
  	puts Gossip.first.title
  	puts "$" * 60
  end

  def new  
  end

  def create
    puts "$" * 60
    puts params[:title]
    puts "Voici le numéro du gossip choisi par l'utilisateur qui est stocké dans params #{params}"
    puts "$" * 60

  @gossip = Gossip.new(title:params[:title], content:params[:content], user_id: User.last.id) # avec xxx qui sont les données obtenues à partir du formulaire

  if @gossip.save # essaie de sauvegarder en base @gossip
    redirect_to  (gossip_index_path), alert: 'Votre gossip a bien été sauvegardé'
    else
    render (new_gossip_path) # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  end
  end

  def index
    #permet d'afficher une alerte à l'utilisateur
    puts flash[:alert]

    puts "-" * 60
    puts "Voici le nom du dernier auteur :"
    @gossip_list = Gossip.all
    puts @gossip_list[-1].user.last_name
    puts "-" * 60
  end


end
