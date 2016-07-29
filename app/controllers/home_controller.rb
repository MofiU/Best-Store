class HomeController < ApplicationController
  def index

  end

  def error_404
    render 'errors/404'
  end
end
