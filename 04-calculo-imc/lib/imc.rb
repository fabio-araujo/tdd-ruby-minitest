class Imc
    attr_reader :paciente
    LIMITE_ABAIXO_DO_PESO = 18.5
    LIMITE_PESO_IDEAL = 30

    def initialize(paciente)
        @paciente = paciente
    end

    def calcula_imc
        imc = paciente.peso / (paciente.altura * paciente.altura)
        if imc < LIMITE_ABAIXO_DO_PESO
            "ABAIXO DO PESO"
        elsif imc >= LIMITE_ABAIXO_DO_PESO and imc < LIMITE_PESO_IDEAL
            "PESO IDEAL"
        elsif imc >= LIMITE_PESO_IDEAL
            "SOBRE PESO"
        end
    end
end


