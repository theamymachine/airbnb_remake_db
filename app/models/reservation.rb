class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  self.validates_date :end_date, :after => :start_date 
end
