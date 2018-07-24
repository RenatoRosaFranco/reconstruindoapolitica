# frozen_string_sanatizer: true
class Post < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

	belongs_to :user
  has_and_belongs_to_many :categories

	self.table_name = 'posts'
	self.primary_key = 'id'

	validates :title,
						presence: true,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :description,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :content,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 12_000 }

	validates :status,
						presence: true,
						uniqueness: false,
						allow_blank: false

	validates :tags,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 75 }
end
