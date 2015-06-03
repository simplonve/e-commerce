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
  has_many :produits
end

class Client < ActiveRecord::Base
  has_many :clients
  has_many :commandes
  has_many :produits 
end


get '/' do 
	@produits = Produit.all
	erb :accueil
end

get '/panier' do
	@commande = Commande.all
	@table_produit = Produit.all
	erb :panier
end

get '/:id' do
	@produit_select = Produit.find(params[:id])
	erb :fiche_produit
end

post '/ajout' do
	@ajout_produit_panier = Commande.new(params[:valeur])
	@ajout_produit_panier.save
	redirect "/panier"
end

delete "/:id" do
	@suppression_article = Commande.find(params[:id])
	@suppression_article.destroy
	redirect "/panier"
end