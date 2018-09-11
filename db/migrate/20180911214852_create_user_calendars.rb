class CreateUserCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :user_calendars do |t|
      t.user :belongs_to
      t.event_date :belongs_to

      t.timestamps
    end
  end
end
