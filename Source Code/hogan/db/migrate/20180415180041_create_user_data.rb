class CreateUserData < ActiveRecord::Migration[5.1]
  def change
    create_table :user_data do |t|

      t.timestamps
    end
  end
end
