class SocksController < ApplicationController
  def index
    @socks = Sock.all
    skip_policy_scope
  end

  def show
    @sock = Sock.find(params[:id])
  end

  def create
    @sock = Sock.new(sock_params)
    if @sock.save
      redirect_to sock_path(@sock)
    else
      render :new
    end
  end

  def new
    @sock = Sock.new()
  end
  def edit
    @sock = Sock.find(params[:id])
  end
  def update
    @sock = Sock.new(sock_params)
    if @sock.save
      redirect_to sock_path(@sock)
    else
      render :edit
    end
  end

  def destroy
    @sock = Sock.find(params[:id])
    @sock.destroy
  end

  private
  def sock_params
    params.require(:sock).permit(:color, :title, :description, :category,
    :price, :user_id, :size )
  end
end
