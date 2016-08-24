class HomeController < ApplicationController
  def index
    @items = ProductiveItem.order(created_at: :desc).limit(20)
  end
end
