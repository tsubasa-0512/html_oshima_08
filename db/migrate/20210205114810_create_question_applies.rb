class CreateQuestionApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :question_applies do |t|
      t.integer :question_id
      t.integer :apply_id

      t.timestamps
    end
  end
end
