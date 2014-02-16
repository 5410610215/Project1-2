#นายพริษฐ์พันธุ์ พันธุ์ศิริ 5410610215
#นายศุภณัฐ เลิศการณ์ 5410610165
class CreateComments < ActiveRecord::Migration  #class for create the comment
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
