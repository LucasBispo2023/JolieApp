class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :description
      t.boolean :isCorrect, default: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
