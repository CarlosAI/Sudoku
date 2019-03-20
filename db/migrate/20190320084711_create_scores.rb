class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :nombre
      t.date :tiempo1
      t.date :tiempo2

      t.timestamps
    end
  end
end
