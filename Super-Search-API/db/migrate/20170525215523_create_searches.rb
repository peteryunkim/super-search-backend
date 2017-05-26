class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :search_term
      t.text :note

      t.timestamps
    end
  end
end
