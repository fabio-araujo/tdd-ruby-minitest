require 'minitest/autorun'
require_relative '../lib/paciente.rb'
require_relative '../lib/imc.rb'
class ImcTest < MiniTest::Unit::TestCase
    def teste_se_abaixo_do_peso
        paciente = Paciente.new 'Vinicius de Morais', 50, 1.80
        imc = Imc.new paciente
        assert_equal "ABAIXO DO PESO", imc.calcula_imc
    end

    def teste_se_peso_ideal
        paciente = Paciente.new 'Juscelino Jubitschek', 70, 1.80
        imc = Imc.new paciente
        assert_equal "PESO IDEAL", imc.calcula_imc
    end

    def teste_se_sobrepeso
        paciente = Paciente.new 'Cecilia Meireles', 90, 1.70
        imc = Imc.new paciente
        assert_equal "SOBRE PESO", imc.calcula_imc
    end
end


