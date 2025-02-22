class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new()
  end

  def create
    @creator = User.find(1) # switch to current_user
    @event = @creator.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.expect(event: [ :name, :place, :event_date ])
  end
end
