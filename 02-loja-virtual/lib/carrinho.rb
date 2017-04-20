class Carrinho
    attr_reader :produtos

    def initialize
        @produtos = []
    end

    def <<(produto)
        @produtos << produto
    end
end