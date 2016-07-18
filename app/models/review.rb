class Review < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :cohort



  def cohort_group
    cohort.name
  end
end
