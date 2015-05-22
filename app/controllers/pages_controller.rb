class PagesController < ApplicationController
  def home
  	@titre = "Accueil"
    @coloc = Coloc.all
    @hash = Gmaps4rails.build_markers(@colocs) do |coloc, marker|
      marker.lat coloc.latitude
      marker.lng coloc.longitude
    end
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

  def account
    @user = current_user
    @coloc = Coloc.joins(:users).where(users: { id: @user.id })
  end
end
