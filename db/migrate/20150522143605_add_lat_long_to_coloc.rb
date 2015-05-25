class AddLatLongToColoc < ActiveRecord::Migration
  def change
    add_column :colocs, :latitude, :float
    add_column :colocs, :longitude, :float
  end
end
