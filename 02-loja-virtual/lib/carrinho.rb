class Carrinho
    attr_reader :produtos

    def initialize
        @produtos = []
    end

    def adiciona_produto(produto)
        @produtos << produto
    end
end