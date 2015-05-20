module ApplicationHelper
	def titre
    base_titre = "Le reseau n°1 de la colocation"
	    if @titre.nil?
	      base_titre
	    else
	      "#{base_titre} | #{@titre}"
	    end
  end
end
