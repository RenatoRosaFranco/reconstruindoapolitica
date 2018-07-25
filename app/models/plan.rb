# frozen_string_sanatizer: true
class Plan < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	self.table_name = 'plans'
	self.primary_key = 'id'

  belongs_to :user
  has_many :plans, dependent: :destroy

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
