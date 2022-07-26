class TagsController < ApplicationController
  def list
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(params.require(:tag).permit(:name, :tag_type_id))

    if @tag.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(params.require(:tag).permit(:name, :tag_type_id))
       redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

end
