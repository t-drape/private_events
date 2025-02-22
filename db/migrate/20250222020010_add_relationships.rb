class AddRelationships < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :event_creator_id, :integer
    add_index "events", [ 'event_creator_id' ], name: 'index_event_creator_id'
  end
end
