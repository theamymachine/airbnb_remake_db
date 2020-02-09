class AddAdminAndGuestIndex < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :admin, class_name: "User"
end
