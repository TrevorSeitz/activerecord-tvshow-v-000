class Show < ActiveRecord::Base

  def self.highest_rating
    # rating = shows.where("rating = maximum").order(:desc)
    self.maximum(:rating)
  end

  def self.most_popular_show
    Show.order(rating: :desc).first
  end

  def self.lowest_rating
    Show.order(rating: :asc).first.rating
  end

  def self.least_popular_show
    Show.order(rating: :asc).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

end
