class RenameAssignmentsAndTestsIdOnReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :assignments_and_tests_id, :assignment_id
  end
end
