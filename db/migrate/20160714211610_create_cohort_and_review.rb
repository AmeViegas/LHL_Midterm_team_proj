class CreateCohortAndReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :cohort
      t.references :assignments_and_tests
      t.string   :p_cookie
      t.text     :review_txt
      t.integer  :rating
      t.integer  :doItFIt
    end

    create_table :cohorts do |t|
      t.date     :start_date
      t.date     :end_date
      t.string   :name
    end
  end
end
