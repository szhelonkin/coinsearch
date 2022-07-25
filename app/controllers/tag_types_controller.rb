class TagTypesController < ApplicationController
  def list
    @tag_types = TagType.all
  end
end
