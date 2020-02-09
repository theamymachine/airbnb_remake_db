class CreateAddAdminAndGuestIndices < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :admin, index: true
    add_reference :reservations, :guest, index: true 
  end
end
