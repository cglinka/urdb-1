class AddMovieReferenceToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :movie
    end
  end
end
