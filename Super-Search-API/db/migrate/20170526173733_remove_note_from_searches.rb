class RemoveNoteFromSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :note, :text
  end
end
