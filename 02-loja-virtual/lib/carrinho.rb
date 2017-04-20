class Carrinho
    attr_reader :produtos

    def initialize
        @produtos = []
    end

    def <<(produto)
        @produtos << produto
    end

    def calcula_soma_dos_valores_dos_produtos
        produtos.map(&:valor).inject(0, &:+)
    end
end


