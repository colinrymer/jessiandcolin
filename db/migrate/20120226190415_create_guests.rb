class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :rsvp_id
      t.boolean :plus_one

      t.timestamps
    end
  end
end
