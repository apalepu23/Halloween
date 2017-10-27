class PagesController < ApplicationController
  def home
  	@guests = Guest.all
  	@guest = Guest.new
  end

  def hacked
  	
  end
end
