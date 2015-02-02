class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :message_id
      t.integer :source_user
      t.integer :destination_user

      t.timestamps
    end
  end
end
