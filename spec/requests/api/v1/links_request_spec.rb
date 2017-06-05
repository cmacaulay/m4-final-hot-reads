require 'rails_helper'

describe "links API" do
  it "can create a new link" do
    params = { url: "http://www.google.com" }

    post "/api/v1/links",  params: params
    link = Link.last

    assert_response :success
    expect(response).to be_success
    expect(link.url).to eq(params[:url])
  end

  it "can edit a link" do
    link    = create(:link, url: "http://www.google.com")
    link_id = link.id
    params  = { url: "http://www.google.com", count: 2 }

    patch "/api/v1/links/#{link_id}",  params: params
    link = Link.find_by(url: "http://www.google.com")

    assert_response :success
    expect(response).to be_success
    expect(link.url).to eq(params[:url])
    expect(link.count).to eq(2)
  end
end
