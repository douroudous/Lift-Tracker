class CreateLiftSets < ActiveRecord::Migration[6.0]
  def change
    create_table :lift_sets do |t|
      t.integer :rep_count
      t.belongs_to :lift_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
