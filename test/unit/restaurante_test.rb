require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

	test "não deve gravar restaurantes sem nome" do
		r = Restaurante.new
		assert_equal false, r.save
	end

	test "deve informar através de mensagens que nome é obrigatório" do
		r = Restaurante.new
		r.save
		assert_equal "Deve ser preenchido", r.errors.on(:nome).first
	end 
end
