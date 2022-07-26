class TagTypesController < ApplicationController
  def list
    @tag_types = TagType.all
  end

  def new
    @tag_type = TagType.new
  end

  def create
    @tag_type = TagType.new(params.require(:tag_type).permit(:name))

    if @tag_type.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def show
    @tag_type = TagType.find(params[:id])
  end

  def edit
    @tag_type = TagType.find(params[:id])
  end

  def update
    @tag_type = TagType.find(params[:id])
    if @tag_type.update(params.require(:tag_type).permit(:name))
       redirect_to :action => 'show', :id => @tag_type
    else
      render :action => 'edit'
    end
  end

end
