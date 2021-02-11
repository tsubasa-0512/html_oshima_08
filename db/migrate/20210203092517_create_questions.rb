class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :name_kana
      t.string :mail
      t.string :channel
      t.string :apply
      t.text :detail

      t.timestamps
    end
  end
end
