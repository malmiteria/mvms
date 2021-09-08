class ResetVotesController < ApplicationController
  def get
    Vote.destroy_all
    render :text => ''
  end
end
