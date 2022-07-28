class TagsController < ApplicationController
  def list
    @tag_types = TagType.all
  end
end
