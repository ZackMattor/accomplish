class ProductiveItemsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @productive_item = ProductiveItem.new(resource_params)

    if @productive_item.save
      render status: :ok, nothing: true
    else
      render json: @productive_item.errors
    end
  end

  def suggested
    items = ProductiveItem.suggested(params['text'])

    render json: items
  end

  private

  def resource_params
    params.require(:productive_item).permit(:body)
  end
end
