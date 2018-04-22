class Show < ActiveRecord::Base

  def highest_rating
    rating = shows.where("rating = maximum").order(:desc)
  end

end
