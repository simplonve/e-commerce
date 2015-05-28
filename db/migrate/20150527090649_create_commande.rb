class CreateCommande < ActiveRecord::Migration
  def change
	create_table :commandes do |c|
  		c.integer :numclient
  		c.string :refproduit
  		c.string :article
  		c.string :descriptif
  		c.integer :numcommande
  		c.integer :quantitearticle
  		c.float :totalprixarticle
  		c.float :totalprixcommande
  		c.datetime :date

  	end	
  end
end
