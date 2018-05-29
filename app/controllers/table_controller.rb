class TableController < ApplicationController
  def index
    @Timeslots = Timeslot.all
    @Rooms = Room.all
  end
end
