class CreateBests < ActiveRecord::Migration[5.0]
  def change
    create_table :bests do |t|
      t.integer :user_id
      t.string  :term
      t.integer :rank
      t.string  :company_name
      t.text  :short_description
      t.text  :long_description
      t.string  :email
      t.text  :address
      t.string  :phone_number
    end
  end
end
