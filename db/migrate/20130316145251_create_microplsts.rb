class CreateMicroplsts < ActiveRecord::Migration
  def change
    create_table :microplsts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
