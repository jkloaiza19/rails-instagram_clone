require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      caption: "MyString",
      longitude: 1.5,
      latitude: 1.5,
      user: nil,
      allow_comments: false,
      show_likes_count: false
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[caption]"

      assert_select "input[name=?]", "post[longitude]"

      assert_select "input[name=?]", "post[latitude]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[allow_comments]"

      assert_select "input[name=?]", "post[show_likes_count]"
    end
  end
end
