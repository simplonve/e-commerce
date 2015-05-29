require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'dev.db'
	)

ActiveRecord::Base.default_timezone=:local

class Produit < ActiveRecord::Base
end

get '/' do 
	@produits = Produit.all
	erb :accueil
end

get '/panier' do
	erb :panier
end

get '/:id' do
	@produit_select = Produit.find(params[:id])
	erb :fiche_produit
end