class CreateUnsolveds < ActiveRecord::Migration
  def change
    create_table :unsolveds do |t|
      t.integer :priority
      t.string :topic
      t.string :department
      t.text :details
      t.integer :status

      t.timestamps
    end
  end
end
