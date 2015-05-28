class CreateProduit < ActiveRecord::Migration
  def change
  	  	create_table :produits do |c|
  		c.string :refproduit
  		c.string :article
  		c.string :descriptif
  		c.integer :stock
  		c.float :prixproduit
  	end
  end
end
