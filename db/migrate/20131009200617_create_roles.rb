class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character
      t.reference :movie
      t.reference :star

      t.timestamps
    end
  end
end
