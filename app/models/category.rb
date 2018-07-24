# frozen_string_sanatizer: true
class Category < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	belongs_to :user
	has_and_belongs_to_many :posts

  self.table_name = 'categories'
  self.primary_key = 'id'

  has_many :categories, dependent: :destroy
  belongs_to :category, optional: true

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 75 } 
end