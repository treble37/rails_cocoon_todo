class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.string :description
      t.string :due_date

      t.timestamps null: false
    end
  end
end
