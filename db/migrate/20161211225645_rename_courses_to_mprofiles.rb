class RenameCoursesToMprofiles < ActiveRecord::Migration
  def change
    rename_table :courses, :mprofiles
  end
end
