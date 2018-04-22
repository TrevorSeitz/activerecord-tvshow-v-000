class Show < ActiveRecord::Base

  def self.highest_rating
    # rating = shows.where("rating = maximum").order(:desc)
    self.maximum(:rating)
  end

end
