class AddNotesToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :notes, :string

  end
end
