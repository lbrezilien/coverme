class CoversController < ApplicationController

  def index
    if params[:search]
      @covers = Cover.search(params[:search])
    else
      @covers = Cover.all
    end
  end

  def show
    @cover = Cover.find_by(id: params[:id])
  end

end
