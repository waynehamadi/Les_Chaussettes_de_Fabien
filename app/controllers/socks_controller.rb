class SocksController < ApplicationController
  def show
    @sock = Sock.find(params[:id])
  end
end
