class Todo < ActiveRecord::Base
	belongs_to :user

	validates :content, length: {maximum: 10}  #hata almak için validasyon oluştuduk
end
