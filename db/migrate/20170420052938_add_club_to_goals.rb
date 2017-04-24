class AddClubToGoals < ActiveRecord::Migration[5.0]
  def change
  	add_column :goals, :club_id, :integer
  end
end
