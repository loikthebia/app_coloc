class AddNewAttrToColocs < ActiveRecord::Migration
  def change
  	add_column :colocs, :titre, :string
  	add_column :colocs, :superficie, :integer
  	add_column :colocs, :nb_habitants, :integer
  	add_column :colocs, :nb_chambres, :integer
  	add_column :colocs, :loyer, :integer
  end
end
