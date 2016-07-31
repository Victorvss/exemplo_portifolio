class HomeController < ApplicationController
  def index
    @portfolio = Portfolio.find(4)
  end
end
