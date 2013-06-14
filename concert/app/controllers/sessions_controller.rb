class SessionsController < ApplicationController
#def create  
 #   raise request.env["omniauth.auth"].to_yaml  
  #end

def create
  auth_hash = request.env['omniauth.auth']
 
  render :text => auth_hash.inspect
end

def create
		if @usuario = login(params[:email], params[:password], params[:remember_me])
			redirect_back_or_to(usuarios_path, message: "Login Exitoso")
		else
			flash.now[:alert] = "Su usuario y/o contrasena son incorrectos"
			render actions: :new
			redirect_to :usuarios_path 
			
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "La sesion ha finalizado")
	end

	def create
  auth_hash = request.env['omniauth.auth']
 
  @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  if @authorization
    render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
  else
    usuario = Usuario.new :name => auth_hash["usuario_info"]["e,ao"], :name => auth_hash["usuario_info"]["email"]
    usuario.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    user.save
 
    render :text => "Hi #{usuario.name}! You've signed up."
  end

  def destroy
  session[:user_id] = nil
  render :text => "You've logged out!"
  end

  def failure
  render :text => "Sorry, but you didn't allow access to our app!"
  end



end


end
