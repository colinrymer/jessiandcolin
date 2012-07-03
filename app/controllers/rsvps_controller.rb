class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new(params[:rsvp])
    @adult_count = params[:adult_count] ? params[:adult_count].to_i : 2
    @children_count = params[:children_count] ? params[:children_count].to_i : 0
    @adult_count.times { @rsvp.guests.build }
    @children_count.times { @rsvp.guests.build(child: true) }
  end

  def create
    @rsvp = Rsvp.create(params[:rsvp])
  end

  def show
  end

  def index
  end
end
