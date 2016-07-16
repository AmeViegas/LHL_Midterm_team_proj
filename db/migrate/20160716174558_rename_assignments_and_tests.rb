class RenameAssignmentsAndTests < ActiveRecord::Migration
  def change
    rename_table :assignments_and_tests, :assignments
  end
end
