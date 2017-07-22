class DeletedCompany < ApplicationRecord
  has_many :activity
  belongs_to :status
  belongs_to :member
  has_many :event
end
