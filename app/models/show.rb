class Show < ActiveRecord::Base

  def self.highest_rating
    # rating = shows.where("rating = maximum").order(:desc)
    self.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = maximum").orderrdsc).first.name
  end

end
