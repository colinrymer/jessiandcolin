class CreatePartiers < ActiveRecord::Migration
  def change
    create_table :partiers do |t|
      t.string :name
      t.boolean :bridesmaid, :null => false, :default => false
      t.string :picture_file
      t.text :description

      t.timestamps
    end
  end
end
