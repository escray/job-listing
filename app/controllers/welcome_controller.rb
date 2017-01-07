class WelcomeController < ApplicationController
  def index
    flash[:notice] = "There are a lot of great jobs coming..."
  end
end
