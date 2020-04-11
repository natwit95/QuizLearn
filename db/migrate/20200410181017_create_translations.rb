class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.string :input
      t.string :output
      t.belongs_to :user_language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
