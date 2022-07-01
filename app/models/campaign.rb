class Campaign < ApplicationRecord
  belongs_to :user

  has_many :items
  has_many :creatures
  has_many :npcs
end
