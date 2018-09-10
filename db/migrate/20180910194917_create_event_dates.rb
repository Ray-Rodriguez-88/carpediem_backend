class CreateEventDates < ActiveRecord::Migration[5.2]
  def change
    create_table :event_dates do |t|
      t.belongs_to :event 
      t.belongs_to :calendar_date 
      t.timestamps
    end
  end
end
