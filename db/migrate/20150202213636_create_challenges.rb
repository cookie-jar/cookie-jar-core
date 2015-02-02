class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :challenge_id
      t.string :challenge

      t.timestamps
    end
  end
end
