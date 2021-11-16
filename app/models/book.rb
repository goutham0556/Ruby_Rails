class Book < ApplicationRecord

	validates :book_id, presence: true
	validates :book_title, presence: true
	validates :author, presence: true
	validates :publisher, presence: true
	validates :year, presence: true
end
