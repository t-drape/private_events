class UsersController < ApplicationController
  def show
    @events = Event.where("event_creator_id = '1'")
  end
end
