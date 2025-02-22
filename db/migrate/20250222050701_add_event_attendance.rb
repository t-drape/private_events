class AddEventAttendance < ActiveRecord::Migration[8.0]
  def change
    create_table :events_to_attend do |t|
      t.column :event_attendee_id, :integer
      t.index [ 'event_attendee_id' ], name: 'index_event_attendee_id'

      t.column :attended_event_id, :integer
      t.index [ 'attended_event_id' ], name: 'index_attended_event_id'
    end
  end
end
