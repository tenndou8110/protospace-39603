class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.build(prototype_params)
    if @prototype.save
      redirect_to @prototype, notice: 'Prototype was successfully created.'
    else
      # バリデーションによって保存できなかった場合、新規投稿ページを再表示
      render 'new'
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end

  def index
    @prototypes = Prototype.all 
  end


  def show
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = current_user.prototypes.find(params[:id])
  end

  def update
    @prototype = current_user.prototypes.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to @prototype, notice: 'Prototype was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @prototype = current_user.prototypes.find(params[:id])
    @prototype.destroy
    redirect_to prototypes_path, notice: 'Prototype was successfully destroyed.'
  end
end
