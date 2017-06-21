class CatAdoptionRequestController < ApplicationController
  def new
    @cat_adoption_request = CatAdoptionRequest.new
    render :new
  end


end
