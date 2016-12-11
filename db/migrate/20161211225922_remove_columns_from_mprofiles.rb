class RemoveColumnsFromMprofiles < ActiveRecord::Migration
  def change
    remove_column :mprofiles, :title
    remove_column :mprofiles, :cost
    remove_column :mprofiles, :description
    add_column :mprofiles, :first_name, :string
    add_column :mprofiles, :bio, :text
    add_column :mprofiles, :email, :string
  end
end
