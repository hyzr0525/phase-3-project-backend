class Deck < ActiveRecord::Base
    has_many :card_decks
    belongs_to :user
    has_many :cards, through: :card_decks

    # take a deck id and a card id, find the card_deck id and delete it
    def delete_card(card_id)
        card = self.card_decks.find {|value| value.card_id == card_id}
        card.destroy
    end
end