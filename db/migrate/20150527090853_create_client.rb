class CreateClient < ActiveRecord::Migration
  def change
  	create_table :clients do |c|

  		c.integer :numclient
  		c.string :nom
  		c.string :prenom
  		c.string :adresse
  		c.integer :codepostal
  		c.string :ville
  		c.string :pays
  		c.string :telephone
  		c.string :mail

  	end
  end
end
