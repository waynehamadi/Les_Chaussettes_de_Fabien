class SocksController < ApplicationController
  def index
    @socks = Sock.all
  end

  def show
    @sock = Sock.find(params[:id])
  end

  def destroy
    @sock = Sock.find(params[:id])
    @sock.destroy
  end
end
