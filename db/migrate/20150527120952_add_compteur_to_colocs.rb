class AddCompteurToColocs < ActiveRecord::Migration
  def change
  	add_column :colocs, :compteur, :integer
  end
end
