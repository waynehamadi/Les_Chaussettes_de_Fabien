class PagesController < ApplicationController
  def home
    render navbar: false
  end
end
