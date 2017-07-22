class Report < ApplicationRecord
  belongs_to :company
  belongs_to :event
  belongs_to :member
end
