class HomepageController < ApplicationController
  def index
    @winner = Restaurant.most_voted
  end
end
