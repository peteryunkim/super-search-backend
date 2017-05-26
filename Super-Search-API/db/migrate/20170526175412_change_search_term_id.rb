class ChangeSearchTermId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :notes, :search_term_id, :search_id
  end
end
