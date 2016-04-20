class CoversController < ApplicationController

  def index
    @covers = Cover.all
  end

end
