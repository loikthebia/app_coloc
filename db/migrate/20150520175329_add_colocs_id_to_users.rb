class AddColocsIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :colocs_id, :integer
  end
end
