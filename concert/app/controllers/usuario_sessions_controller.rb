class UsuarioSessionsController < ApplicationController

	
	def new
		

	end

	def create
		if @usuario = login(params[:email],params[:password], params[:remember_me])
			session[:usuario_sesion] = @usuario
			redirect_back_or_to(bands_path, :notice => "Login Exitoso")
		else
			flash.now[:alert] = "Su usuario y/o contrasena son incorrectos"
			render action: :new
		 
			
		end
	end
	def destroy
		logout
	    @bands = Band.all
	    session[:band_sesion] = @bands
	    @usuario =  Usuario.new
	    session[:usuario_sesion] = @usuario
		redirect_to(:usuarios, message: "La sesion ha finalizado")
	end
end