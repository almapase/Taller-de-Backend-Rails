class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


end
