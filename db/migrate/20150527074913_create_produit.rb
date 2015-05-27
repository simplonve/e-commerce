class CreateProduit < ActiveRecord::Migration
  def change
  	create_table :produits do |c|
  		c.string :refproduit
  		c.string :article
  		c.string :descriptif
  		c.integer :stock
  		c.integer :prixproduit
  	end
  end
end
