require 'minitest/autorun'
require_relative '../lib/filme.rb'
require_relative '../lib/pedido.rb'

class LocadoraDeFilmeTest < MiniTest::Unit::TestCase
    def testa_soma_valores_filmes
        pedido = Pedido.new
        pedido << Filme.new('Senhor dos Aneis', '8.0')
        pedido << Filme.new('Matrix','7.0')

        assert_equal 15, pedido.calcula_pedido
    end
end