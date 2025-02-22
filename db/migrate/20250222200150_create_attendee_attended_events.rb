class CreateAttendeeAttendedEvents < ActiveRecord::Migration[8.0]
  def change
    drop_table :events_to_attend
    
    create_table :attendee_attended_events do |t|
      t.column :attendee_id, :integer
      t.index [ 'attendee_id' ], name: 'index_attendee_id'

      t.column :attended_event_id, :integer
      t.index [ 'attended_event_id' ], name: 'index_attended_event_id'
    end
  end
end
