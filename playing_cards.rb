class Deck
    SUITS = ['s', 'h', 'd', 'c']
    VALUES = (2..10).map(&:to_s) + ['J', 'Q', 'K', 'A']

    def initialize
        @stack = generate_stack
    end
    
    def draw
        @stack.pop
    end
    
    def shuffle
        @stack.shuffle!
    end

    private

    def generate_stack
        VALUES.product(SUITS).map!(&:join)
        # stack = []
        # VALUES.each do |value|
        #     SUITS.each do |suit|
        #         stack << value + suit
        #     end
        # end
        # stack
    end
end

class Player
    def initialize
        @hand = []
    end

    def draw(card)
        @hand << card
    end

    def reveal_hand
        puts @hand
    end

    def peek_hand(player)
        player.reveal_hand
    end
end

class Dealer
    def initialize
        @deck = Deck.new
    end

    def deal_card(player)
        player.draw(@deck.draw)
    end

    def shuffle_deck
        @deck.shuffle
    end

    def burn_card
        @deck.draw
    end

    def open_pack
        @deck = Deck.new
    end
end

dealer = Dealer.new
tara = Player.new
gustin = Player.new

p dealer.shuffle_deck
p dealer.burn_card
5.times { dealer.deal_card(tara) }

p dealer
p tara

# tara.reveal_hand
gustin.peek_hand(tara)
