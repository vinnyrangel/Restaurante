class Prato < ActiveRecord::Base
	validates_presence_of :nome, :message => " - deve ser preenchido"
	validates_uniqueness_of :nome, :message => " - já cadastrado"	
	
	belongs_to :prato
	validate :validar_presenca_de_varios_restaurantes
	
	private
	def validar_presenca_de_varios_restaurantes
		if restaurantes.empty?
			errors.add("restaurantes", "deve haver ao menos um restaurante")
		end
	end
end
