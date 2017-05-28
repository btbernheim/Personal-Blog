class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
						# If you set the :dependent option to, :destroy, 
						# it causes all the associated objects to also be destroyed.
						# This way if a post is destroyed, its comments will as well,
						# rather than being left in the DB taking up space.
	validates :title, presence: true
	validates :body, presence: true
end
