class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.belongs_to :photo, null: false, foreign_key: true
      t.string :name
      t.float :time

      t.timestamps
    end
  end
end
