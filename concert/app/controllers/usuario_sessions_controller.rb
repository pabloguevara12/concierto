class UsuarioSessionsController < ApplicationController

	
	def new
		@usuario =  Usuario.new
	end

	def create
		if @usuario = login(params[:email],params[:password], params[:remember_me])
			redirect_back_or_to(bands_path, :notice => "Login Exitoso")
		else
			flash.now[:alert] = "Su usuario y/o contrasena son incorrectos"
			render action: :new
		 
			
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "La sesion ha finalizado")
	end
end