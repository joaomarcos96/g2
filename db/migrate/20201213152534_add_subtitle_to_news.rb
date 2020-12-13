class AddSubtitleToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :subtitle, :string, null: false
  end
end
