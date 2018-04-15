class AddAchievementToUserInformations < ActiveRecord::Migration[5.1]
  def change
    add_column :user_informations, :achievement, :string, default: ''
  end
end
