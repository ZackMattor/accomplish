class HomeController < ApplicationController
  def index
    @items = ProductiveItem.where('created_at > ?', DateTime.current.beginning_of_day).limit(20)
  end
end
