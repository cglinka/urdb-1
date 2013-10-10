class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end

  def audience_rating
    r = rotten_finder
    if r == []
      return nil
    else
      r.ratings.audience_score
    end
  end

  def snippet
    if description
      description.truncate 50
    else
      return ''
    end
  end
  def self.average_rating
  end
end
