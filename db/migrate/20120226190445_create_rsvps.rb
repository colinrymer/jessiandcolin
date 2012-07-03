class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :shuttle
      t.string :notes

      t.timestamps
    end
  end
end
