class UsuariosController < ApplicationController
  def show
  	@usuario = Usuario.find(params[:id])
  end

  def new
  	@usuario = Usuario.new
  end

  def create
  	@usuario=Usuario.new(params[:usuario])
  	if @usuario.save
  		flash[:success] = "Cadastro efetuado com sucesso"
  		redirect_to @usuario
  	else
  		render :new
  	end
  end

end
