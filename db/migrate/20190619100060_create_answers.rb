class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.timestamps
    end
  end
end
