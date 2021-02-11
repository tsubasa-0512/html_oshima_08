class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.string :apply_reason
      
      t.timestamps
    end
  end
end
