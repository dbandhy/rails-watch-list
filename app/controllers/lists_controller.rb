class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    save
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
