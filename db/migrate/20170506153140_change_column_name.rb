class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :bests, :url, :web_address
  end
end
