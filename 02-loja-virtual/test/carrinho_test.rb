require 'minitest/autorun'
require_relative '../lib/carrinho.rb'
require_relative '../lib/produto.rb'

class CarrinhoTest < MiniTest::Unit::TestCase
    def testa_soma_dos_valores_dos_produtos_do_carrinho
        carrinho = Carrinho.new
        carrinho << Produto.new("Home Teather",1000.0)
        carrinho << Produto.new("Sofá 3 Lugares",1500.0)
        carrinho << Produto.new("Televisor 55 polegadas",3000.0)
        assert_equal 5500.0, carrinho.calcula_soma_dos_valores_dos_produtos
    end
end


