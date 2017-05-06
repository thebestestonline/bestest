class AddUrlToBests < ActiveRecord::Migration[5.0]
  def change
    add_column :bests, :url, :string
  end
end
