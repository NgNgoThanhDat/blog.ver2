class MyappController < ApplicationController
  def index
    @pages = Page.order("published_at DESC")
  end 
end
