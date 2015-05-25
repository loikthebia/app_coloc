class PagesController < ApplicationController
  def home
  	@titre = "Accueil"
    @coloc = Coloc.all
  end

  def contact
  	@titre = "Contact"
  end

  def about
  	@titre = "À propos"
  end

  def help
  	@titre = "Aide"
  end

  def list_users
    @users = User.all
  end

  def add_user
    @user = User.find(params[:id])
    if @user.id == current_user.id
      redirect_to pages_list_users_path, alert: "Vous ne pouvez pas vous ajouter vous-même"
    else
      @user.update(:coloc_id => current_user.coloc_id)
      redirect_to pages_list_users_path, notice: "success"
    end
  end
end
