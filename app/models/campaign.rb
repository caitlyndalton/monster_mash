class Campaign < ApplicationRecord
  belongs_to :users

  has_many :items
  has_many :creatures
  has_many :npcs
end
