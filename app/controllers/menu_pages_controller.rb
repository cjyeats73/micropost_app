class MenuPagesController < ApplicationController
  def Home
    @title = "Home"
  end

  def Help
    @title = "Help"
  end
  
  def About
    @title = "About"
  end
end
