class CreateRemoveUserFromReservationAndListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :user_id
    remove_column :listings, :user_id
  end
end
