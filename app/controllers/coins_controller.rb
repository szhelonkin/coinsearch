class CoinsController < ApplicationController
  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def edit
    @asset = Asset.find(params[:id])
    @tags = Tag.all
  end

  def update
    @asset = Asset.find(params[:id])
    if @asset.update(params.require(:asset).permit(:name))
       redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def create
    @asset = Asset.new(params.require(:asset).permit(:name))

    if @asset.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def add_asset_tag
    puts "add asset tag controller"
    puts params
    @asset = Asset.find(params[:id])

    @asset_tag = AssetTag.New(params.require(:asset_tag).permit(:tag_id))
    render :action => 'edit'
  end

end
