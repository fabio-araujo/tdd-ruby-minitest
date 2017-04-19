require 'minitest/autorun'

class CarrinhoTest < MiniTest::Unit::TestCase
    def testa_adicao_do_produto_no_carrinho
        carrinho = Carrinho.new
        produto = Produto.new('Home Theater',1,500.0)
        carrinho.adiciona_produto(produto)

        assert_equal produto, carrinho.produtos[0]
    end
end

