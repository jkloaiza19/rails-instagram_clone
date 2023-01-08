# frozen_string_literal: true

# A controller for the home page.
class HomeController < ApplicationController
  def index
    @user = User.new
  end
end
