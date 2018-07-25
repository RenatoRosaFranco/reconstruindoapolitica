# frozen_string_sanatizer: true
class Benefit < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	
 	self.table_name = 'benefits'
 	self.primary_key = 'id'

  belongs_to :plan

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
  					uniquenesS: false,
  					allow_blank: false,
  					length: { minimum:3, maximum: 75 }
end
