class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :tel_number
      t.text :description

      t.timestamps
    end
  end
end
