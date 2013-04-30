class AdminController < ApplicationController

	#Passar as actions do usuarios_controller para cá
	#Verificar o que falta
	#Apagar o do usuarios_controller

	def new
  		@admin = Admin.new
  end

	def create
		@admin=Admin.new(params[:admin])
		if @admin.save
			sign_in @admin
			flash[:sucess] = "Cadastro de ADMIN efetuado com sucesso"
			#Alterar para o dashboard Admin
			redirect_to root_path
		else
			render :new #Alterar para perfil do usuario recem criado
		end
  end

  	#Controle de usuários

  def show
    @admin = Admin.find(params[:id])
  end

  def index_admins
    @admins = Admin.paginate(page: params[:page])
  end

  def index_usuarios
    @usuarios = Usuario.paginate(page: params[:page])
  end

end
 