class Assignment < ActiveRecord::Base
  has_many :reviews

  def average_rating
    self.reviews.average("rating")*16
  end
end