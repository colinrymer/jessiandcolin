class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.integer :rsvp_id

      t.timestamps
    end
  end
end
