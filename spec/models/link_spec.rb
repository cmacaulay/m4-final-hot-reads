require 'rails_helper'

RSpec.describe Link, type: :model do
  context "validations" do
    it {is_expected.to validate_presence_of(:url)}
  end

  context "methods" do
    it "returns the links with the highest counts" do
      create_list(:link, 5)
      create_list(:link, 5, count: 4)
      create_list(:link, 2, count: 6)
      top = create(:link, url: "http://www.bbc.com", count: 10)

      visit root_path
      within('.hot-reads') do
        expect(page).to have_selector('li', count: 10)
        expect(page).to have_content("http://www.bbc.com")
        expect(page).to_not have_content(1)
      end
    end
  end
end
