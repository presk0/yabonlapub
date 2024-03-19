class Association < ApplicationRecord
#    attr_accessor :name, :website, :logo_address
  validates :name, presence: true
  validates :website, presence: true#, length: { minimum: 10 }
  validates :logo_address, presence: true#, length: { minimum: 10 }
end
