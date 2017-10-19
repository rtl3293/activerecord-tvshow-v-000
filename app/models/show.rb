class Show < ActiveRecord::Base

  def self.highest_rating  
    self.maximum('rating')
    binding.pry
  end

  def self.most_popular_show
    self.find_by(self.highest_rating).name
  end

end
