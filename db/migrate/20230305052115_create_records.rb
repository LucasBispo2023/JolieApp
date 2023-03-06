class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :name, null:false
      t.integer :score, null:false

      t.timestamps
    end
  end
end
