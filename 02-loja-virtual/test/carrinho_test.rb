require 'minitest/autorun'

class CarrinhoTest < MiniTest::Unit::TestCase
    def testa_soma_produtos
        carrinho = Carrinho.new
        carrinho << Produto.new('Home Theater',1,1500.0)
        carrinho << Produto.new('Monitor LED',2,700.0)
        carrinho << Produto.new('Fogão',3, 900.0)

        assert_equal 5600.0, carrinho.calcula_valor_total_carrinho
    end
end

