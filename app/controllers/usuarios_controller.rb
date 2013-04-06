class UsuariosController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user, only: [:edit, :update]

  def show
  	@usuario = Usuario.find(params[:id])
  end

  def new
  	@usuario = Usuario.new
  end

  def create
  	@usuario=Usuario.new(params[:usuario])
  	if @usuario.save
      sign_in @usuario
  		flash[:success] = "Cadastro efetuado com sucesso"
  		redirect_to @usuario
  	else
  		render :new
  	end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update_attributes(params[:user])
      flash[:sucess] = "Dados alterados como sucesso"
      sign_in @usuario
      redirect_to @usuario
    else
      render 'edit'
    end
  end

private
  def signed_in_user
    redirect_to login_url, notice:"Por favor efetue o login antes." unless signed_in?
  end

  def correct_user
    @usuario = Usuario.find(params[:id])
    redirect_to(root_path) unless current_user?(@usuario)
  end

end
