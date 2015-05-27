module ApplicationHelper
	def titre
    base_titre = "Le reseau n°1 de la colocation"
	    if @titre.nil?
	      base_titre
	    else
	      "#{@titre} | #{base_titre}"
	    end
  end
end
