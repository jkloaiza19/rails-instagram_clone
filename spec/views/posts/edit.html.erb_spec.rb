require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      caption: "MyString",
      longitude: 1.5,
      latitude: 1.5,
      user: nil,
      allow_comments: false,
      show_likes_count: false
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[caption]"

      assert_select "input[name=?]", "post[longitude]"

      assert_select "input[name=?]", "post[latitude]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[allow_comments]"

      assert_select "input[name=?]", "post[show_likes_count]"
    end
  end
end
