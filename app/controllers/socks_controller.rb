class SocksController < ApplicationController
  def index
    @socks = Sock.all
  def show
    @sock = Sock.find(params[:id])
  end
end
