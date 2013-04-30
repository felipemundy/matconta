class SessionsController < ApplicationController

	def new
	end

	def create
		usuario=Usuario.find_by_email(params[:session][:email].downcase)
		if usuario && usuario.authenticate(params[:session][:password])
			sign_in usuario
			redirect_to usuario
		else
			flash[:error]= 'E-mail ou senha invalido!'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

	def admin
		usuario=Admin.find_by_login(params[:session][:login])
		if usuario && usuario.authenticate(params[:session][:password])
			sign_in usuario
			#Mais tarde redirect para o dashboard admin
			redirect_to root_url
		else
			flash[:error] = 'Login ou senha invalido!'
			render 'new'
		end

end