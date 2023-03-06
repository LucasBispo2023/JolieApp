class CreateQuizGames < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_games do |t|
      t.integer :score
      t.references :answer, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
