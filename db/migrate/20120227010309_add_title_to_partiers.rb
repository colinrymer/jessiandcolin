class AddTitleToPartiers < ActiveRecord::Migration
  def change
    add_column :partiers, :title, :string

  end
end
