class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :authenticity_token
      t.integer :userid

      t.timestamps null: false
    end
  end
end
