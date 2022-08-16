class CoinsController < ApplicationController
  def index
  end

  def new
    @asset = Asset.new
  end
end
