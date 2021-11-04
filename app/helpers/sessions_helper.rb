module SessionsHelper

  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

end



# RESERVES ACCES TO AUTHENTICATED ONLY :

#class TonController < ApplicationController
#  before_action :authenticate_user, only: [:index]  PASSE DABORD PAR AUTH AVANT DALLER SUR :INDEX

#  def index
    # on code quelque chose qui permet d'afficher le dashboard de l'utilisateur
#  end

#  private

#  def authenticate_user
#    unless current_user
#      flash[:danger] = "Please log in."
#      redirect_to new_session_path
#     end
#  end

#end