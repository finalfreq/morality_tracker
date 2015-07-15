require 'rails_helper'

describe User do
  it {should have_and_belong_to_many :items}
  it {should have_and_belong_to_many :actions}
end
