class CreateStartDateMustBeBeforeEndDates < ActiveRecord::Migration[5.2]
  def change
    create_table :start_date_must_be_before_end_dates do |t|
      
      t.timestamps
    end
  end
end
