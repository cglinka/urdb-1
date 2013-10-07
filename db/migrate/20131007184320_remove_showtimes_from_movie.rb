class RemoveShowtimesFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :showtime, :string
  end
end
