class WeddingsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.json { render 'show.html', layout: false}
    end
  end
end
