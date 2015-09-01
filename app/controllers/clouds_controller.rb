class CloudsController < ApplicationController
  def index
  end

  def new
    @cloud = Cloud.new
  end

  def create
    render nothing: true
  end

  def edit
    @cloud = Cloud.find(params[:id])
  end

  def update
    render nothing: true
  end
end
