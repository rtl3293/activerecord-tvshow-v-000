class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum('rating')
    #binding.pry
  end

  def self.most_popular_show
    self.find_by(self.highest_rating)
  end

  def self.lowest_rating
    show = self.minimum('rating')
    binding.pry
  end

  def self.least_popular_show
    self.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    self.sum('rating')
  end

end
