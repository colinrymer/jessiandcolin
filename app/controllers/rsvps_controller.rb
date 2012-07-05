class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new(params[:rsvp])
    @adult_count = params[:adult_count] ? params[:adult_count].to_i : 2
    @children_count = params[:children_count] ? params[:children_count].to_i : 0
    @adult_count.times { @rsvp.guests.build }
    @children_count.times { @rsvp.kids.build }
    respond_to do |format|
      format.html
      format.json { render 'new.html', layout: false}
    end
  end

  def create
    rsvp = params[:rsvp]
    rsvp['guests_attributes'].delete_if { |k, v| v['first_name'].empty? && v['last_name'].empty? }
    rsvp['kids_attributes'].delete_if { |k, v| v['first_name'].empty? && v['last_name'].empty? } if rsvp['kids_attributes']
    @rsvp = Rsvp.new(rsvp)
    @adult_count = params[:adult_count] ? params[:adult_count].to_i : 2
    @children_count = params[:children_count] ? params[:children_count].to_i : 0
    unless @rsvp.save
       render :new
    end
  end

  def show
  end

  def index
  end
end
