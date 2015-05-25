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
    if current_user.coloc_id == nil
      redirect_to new_coloc_path, alert: "Vous n'avez pas encore crée de coloc" and return
    end
    if @user.id == current_user.id
      redirect_to pages_list_users_path, alert: "Vous ne pouvez pas vous ajouter vous-même" and return
    else
      @user.update(:coloc_id => current_user.coloc_id)
      redirect_to pages_list_users_path, notice: "success" and return
    end
  end

  def suppr_user
    current_user.update_attribute('coloc_id', nil)
    redirect_to colocs_path
  end
end
