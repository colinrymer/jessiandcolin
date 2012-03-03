class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.boolean :shuttle
      t.string :notes

      t.timestamps
    end
  end
end
