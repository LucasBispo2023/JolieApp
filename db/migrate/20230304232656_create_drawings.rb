class CreateDrawings < ActiveRecord::Migration[7.0]
  def change
    create_table :drawings do |t|
      t.string :dataURL, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
