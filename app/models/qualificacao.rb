class Qualificacao < ActiveRecord::Base
	belongs_to :restaurante # 1 - 1 (belongs_to é usado na parte forte do relacionamento, onde estão as chaves estrangeiras)
	belongs_to :cliente			# 1 - 1 (na outra parte, usa-se has_one)
	
	has_many :comentarios, :as => :comentavel	
	
	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante
end
