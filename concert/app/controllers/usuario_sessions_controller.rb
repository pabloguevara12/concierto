class UsuarioSessionsController < ApplicationController

	
	def new
		@usuario = Usuario.new
	end

	def create
		if @usuario = login(params[:email],params[:password])
			redirect_back_or_to(usuarios_path, message: "Login Exitoso")
		else
			flash.now[:alert] = "Su usuario y/o contrasena son incorrectos"
			render actions: :new
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "La sesion ha finalizado")
	end
end