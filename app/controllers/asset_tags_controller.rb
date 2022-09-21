class AssetTagsController < ApplicationController
  def new
    @asset_tag = AssetTag.new
    @tags = Tag.all
  end

  def create
    @asset_tag = AssetTag.new(params.require(:asset_tag).permit(:name))

    if @asset_tag.save
      redirect_to :action => 'new'
    else
      render :action => 'new'
    end
  end
end
