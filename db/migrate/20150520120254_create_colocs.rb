class CreateColocs < ActiveRecord::Migration
  def change
    create_table :colocs do |t|
      t.string :adress
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
