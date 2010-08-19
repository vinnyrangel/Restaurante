class Restaurante < ActiveRecord::Base

	validates_presence_of :nome, :message => " - deve ser preenchido"
	validates_presence_of :endereco, :message => " - deve ser preenchido"
	validates_presence_of :especialidade, :message => " - deve ser preenchido"

	validates_uniqueness_of :nome, :message => " - já cadastrado"	
	validates_uniqueness_of :endereco, :message => " - já cadastrado"
	
	validate :primeira_letra_maiuscula

	has_many :qualificacoes 					# 1 - *
	has_and_belongs_to_many :pratos		# * - *
	has_many :comentarios, :as => :comentavel

	private
	
	def primeira_letra_maiuscula
		unless /[A-Z].*/=~ nome
			errors.add(:nome, "Primeira letra do nome deve ser maiúscula")
		end
	end

end
