require 'rails_helper'

RSpec.describe "likes/show", type: :view do
  before(:each) do
    assign(:like, Like.create!(
      user: nil,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
