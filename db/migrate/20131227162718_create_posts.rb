#นายพริษฐ์พันธุ์ พันธุ์ศิริ 5410610215
#นายศุภณัฐ เลิศการณ์ 5410610165
class CreatePosts < ActiveRecord::Migration  #class for create the post
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
