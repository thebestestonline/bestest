class AddTimestampsToBests < ActiveRecord::Migration[5.0]
  def change
    add_column :bests, :created_at, :datetime
    add_column :bests, :updated_at, :datetime
  end
end
