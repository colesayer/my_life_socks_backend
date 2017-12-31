class BumpsController < ApplicationController

  def index
    @bumps = Bump.all
    render json: @bumps
  end

  def show
    @bump = Bump.find_by(id: params[:id])
    render json: @bump
  end

  def create
    @bump = Bump.new(name: params[:name], bump_url: params[:bump_url], needle_count: params[:needle_count], construction: params[:construction], cushion: params[:cushion])
    if @bump.save
      render json: @bump
    else
      render json: {errors: @bump.errors.full_messages}, status: 422
    end
  end

  def update
    @bump = Bump.find_by(id: params[:id])
    if @bump.update(name: params[:name], bump_url: params[:bump_url], needle_count: params[:needle_count], construction: params[:construction], cushion: params[:cushion])
      render json: @bump
    else
      render json: {errors: @bump.errors.full_messages}, status: 422
    end
  end

  def destroy
    @bump = Bump.find_by(id: params[:id])
    if @bump.destroy
      @bumps = Design.all
      render json: @bumps
    else
      render json: {errors: @bump.errors.full_messages}, status: 422
    end
  end

end
