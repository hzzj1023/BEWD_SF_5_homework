class AddRatingToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :Rating, :integer
  end
end
