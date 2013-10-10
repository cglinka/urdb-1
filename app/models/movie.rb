class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end

  def snippet
    if description
      description.truncate 50
    else
      return ''
    end
  end
end
