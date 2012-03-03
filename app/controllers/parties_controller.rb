class PartiesController < ApplicationController
  def index
    @bridesmaids = Partier.find :all, conditions: {bridesmaid: true}
    @groomsmen = Partier.find :all, conditions: {bridesmaid: false}
  end

  def show
  end
end
