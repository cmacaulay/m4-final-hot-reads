require 'rails_helper'

RSpec.describe Link, type: :model do
  it {is_expected.to validate_presence_of(:url)}
end
