class ChangeDataApplyToQuestion < ActiveRecord::Migration[5.2]
  def change
    change_column :questions, :channel, :string
    change_column :questions, :apply, :string
  end
end
