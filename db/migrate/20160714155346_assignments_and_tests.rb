class AssignmentsAndTests < ActiveRecord::Migration
  def change
    create_table :assignments_and_tests do |t|
      t.string :assignment_date
      t.string :name
      t.date :expiration_date

      t.timestamps
    end
  end
end

# AssignmentsAndTests.create assignment_date: "W1D1", name: "Development Machine Setup", expiration_date: 9999-12-31