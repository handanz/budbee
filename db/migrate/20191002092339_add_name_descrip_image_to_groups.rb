class AddNameDescripImageToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :name, :string
    add_column :groups, :description, :text
    add_column :groups, :image, :string
  end
end
