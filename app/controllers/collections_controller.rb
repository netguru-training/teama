class CollectionsController < ApplicationController
  expose(:collection)

  def destroy
    collection.delete
    redirect_to :back, notice: 'Collection deleted.'
  end
end
