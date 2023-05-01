# frozen_string_literal: true

# A controller for the home page.
class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
end
