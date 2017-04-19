class Pedido
attr_reader :filmes
    def initialize
        @filmes = []
    end

    def <<(filme)
        @filmes << filme
    end

    def calcula_pedido

    end
end