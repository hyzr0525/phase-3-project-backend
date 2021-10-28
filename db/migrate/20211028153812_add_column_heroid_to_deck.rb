class AddColumnHeroidToDeck < ActiveRecord::Migration[6.1]
  def change
      add_column :decks, :hero_id, :integer
  end
end
