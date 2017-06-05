class Api::V1::LinksController < ApplicationController

  def create
    @link = Link.new(link_params)
      if @link.save
        render json: @link
      else
        render json: @link.errors.full_messages, status: 500
      end
  end

  def update
    @link = Link.find_by(url: params[:url])
    if @link.update_attributes(link_params)
      render json: @link
    else
      render json: @link.errors.full_messages, status: 500
    end
  end

  private

  def link_params
    params.permit(:url, :count)
  end
end
