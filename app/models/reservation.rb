class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :listing
  self.validates_date :end_date, :after => :start_date 
end
