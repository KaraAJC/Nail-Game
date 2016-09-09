class PolishesController < ApplicationController
  def index
    @polishes = Polish.all
  end

  def show
  end

  def new
  end

  def create
    @polish = Polish.create(polish_params)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def polish_params
    params.require(:polish).permit(:name, :brand, :hex_color, :photo_url)
  end
end
