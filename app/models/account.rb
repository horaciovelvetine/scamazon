class Account < ApplicationRecord
  has_one :address
  belongs_to :wallet


  validates_uniqueness_of :number
  validates_presence_of :code, :number, :expires, :name_on
end
