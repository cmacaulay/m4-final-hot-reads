class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @link = Link.new(link_params)
    @existing_record = Link.find_by(url: @link.url)
      if @existing_record
        add_count(@existing_record)
      elsif @link.save
        render json: @link
      else
        render json: @link.errors.full_messages, status: 500
      end
  end

  def add_count(link)
    new_count = link.count + 1
    link.update(count: new_count)
    render json: link
  end

  private

  def link_params
    params.permit(:url)
  end
end
