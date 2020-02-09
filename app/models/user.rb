class User < ApplicationRecord
  has_many :reservations, foreign_key: 'guest_id', class_name: "AddAdminAndGuestIndex"
  has_many :listings, foreign_key: 'admin_id', class_name: "AddAdminAndGuestIndex"
end
