class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :authenticity_token
      t.string :usuario

      t.timestamps null: false
    end
  end
end
