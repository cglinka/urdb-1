class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :comments
  
  def snippet
    self.description.truncate 50
  end
end
