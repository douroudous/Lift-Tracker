class CreateLifts < ActiveRecord::Migration[6.0]
  def change
    create_table :lifts do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
