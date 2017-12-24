class DesignsController < ApplicationController

  def index
    @designs = Design.all
    render json: @designs
  end

  def show
    @design = Design.find_by(id: params[:id])
    render json: @design
  end

  def create
    @design = Design.new(name: params[:name], design_url: params[:design_url], needle_count: params[:needle_count], construction: params[:construction], date: params[:date])
    if @design.save
      render json: @design
    else
      render json: {errors: @design.errors.full_messages}, status: 422
    end
  end

  def update
    @design = Design.find_by(id: params[:id])
    if @design.update(name: params[:name], design_url: params[:design_url], needle_count: params[:needle_count], construction: params[:construction], date: params[:date])
      render json: @design
    else
      render json: {errors: @design.errors.full_messages}, status: 422
    end
  end

  def destroy
    @design = Design.find_by(id: params[:id])
    if @design.destroy
      @designs = Design.all
      render json: @designs
    else
      render json: {errors: @design.errors.full_messages}, status: 422
    end
  end

end
