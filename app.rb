require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'dev.db'
	)

ActiveRecord::Base.default_timezone=:local

class Produit < ActiveRecord::Base
  has_many :commandes
end
 
class Commande < ActiveRecord::Base
  belongs_to :produit
end

get '/' do 
	@produits = Produit.all
	erb :accueil
end

get '/panier' do
	@commande = Commande.all
	erb :panier
end

get '/:id' do
	@produit_select = Produit.find(params[:id])
	erb :fiche_produit
end

post '/ajout' do
	@ajout_produit_panier = Commande.new(params[:test])
	@ajout_produit_panier.save
	redirect "/"
end