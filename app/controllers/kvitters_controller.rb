class KvittersController < ApplicationController
  before_action :set_kvitter, only: [:show, :edit, :update, :destroy]
  
  def index
    @kvitters= Kvitter.all
  end
  
  def new
    if params[:back]
      @kvitter = Kvitter.new(kvitter_params)
    else
      @kvitter = Kvitter.new
    end
  end
  
  def create
    @kvitter = Kvitter.new(kvitter_params)
    if @kvitter.save
      redirect_to kvitters_path, notice: "つぶやきを作成しました！"
    else
      render 'new'
    end  
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @kvitter.update(kvitter_params)
      redirect_to kvitters_path, notice: "つぶやきを編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @kvitter.destroy
    redirect_to kvitters_path, notice: "つぶやきを削除しました！"
  end
  
  def confirm
    @kvitter = Kvitter.new(kvitter_params)
    render :new if @kvitter.invalid?
  end
  
  private
  def kvitter_params
    params.require(:kvitter).permit(:content)
  end

  def set_kvitter
    @kvitter = Kvitter.find(params[:id])
  end
  
end
