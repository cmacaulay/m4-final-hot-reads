class Api::V1::LinksController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @link = Link.new(link_params)
      if @link.save
        render json: @link
      else
        render json: @link.errors.full_messages, status: 500
      end
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(link_params)
      render json: @link
    else
      render json: @link.errors.full_messages, status: 500
    end
  end

  def add_count
    
  end

  private

  def link_params
    params.permit(:url)
  end
end
