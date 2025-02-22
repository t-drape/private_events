class EventsToAttendController < ApplicationController
  def new
    @events = Event.all
  end

  def create
    
  end
end
