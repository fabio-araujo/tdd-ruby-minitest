class Filme
    attr_reader :nome, :valor
    def initialize(nome, valor)
        @nome, @valor = nome, valor
    end
end