class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :fullname
      t.string :phone_number
      t.string :secret

      t.timestamps
    end
  end
end
