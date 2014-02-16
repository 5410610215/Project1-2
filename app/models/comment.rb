#นายพริษฐ์พันธุ์ พันธุ์ศิริ 5410610215
#นายศุภณัฐ เลิศการณ์ 5410610165
class Comment < ActiveRecord::Base
  belongs_to :post
  
end
