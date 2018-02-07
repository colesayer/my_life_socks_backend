class SocksController < ApplicationController
  def index
    @socks = Sock.all
    render json: @socks
  end

  def show
    @sock = Sock.find_by(id: params[:id])
    render json: @sock.to_json( :include => [:design, :bump], :except => [:image] )
  end

  def create
    @sock = Sock.new(name: params[:name], construction: params[:construction], toe_color: params[:toe_color], heel_color: params[:heel_color], welt_color: params[:welt_color], design_id: params[:design_id], bump_id: params[:bump_id], image: params[:image])
    if @sock.save
      render json: @sock
    else
      render json: {errors: @sock.errors.full_messages}, status: 422
    end
  end

  def update
    @sock = Sock.find_by(id: params[:id])
    if @sock.update(name: params[:name], construction: params[:construction], toe_color: params[:toe_color], heel_color: params[:heel_color], welt_color: params[:welt_color], design_id: params[:design_id], bump_id: params[:bump_id], image: params[:image])
      render json: @sock
    else
      render json: {errors: @sock.errors.full_messages}, status: 422
    end
  end

  def destroy
    @sock = Sock.find_by(id: params[:id])
    if @sock.destroy
      @socks = Sock.all
      render json: @socks
    else
      render json: {errors: @sock.errors.full_messages}, status: 422
    end
  end

end
