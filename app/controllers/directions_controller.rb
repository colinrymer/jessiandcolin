class DirectionsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render 'index.html', layout: false}
    end
  end
end
