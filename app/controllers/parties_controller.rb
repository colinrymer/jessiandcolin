class PartiesController < ApplicationController
  def index
    @bridesmaids = Partier.find :all, conditions: {bridesmaid: true}
    @groomsmen = Partier.find :all, conditions: {bridesmaid: false}
    respond_to do |format|
      format.html
      format.json { render 'index.html', layout: false}
    end
  end

  def show
  end
end
