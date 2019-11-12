class MainController < ApplicationController
  def home
    @page_title = 'Home Page'
  end

  def about
    @page_title = "About Us"
  end
end
