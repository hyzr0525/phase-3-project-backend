class DeckController < ApplicationController
    get '/decks' do
        decks = Deck.all
        decks.to_json
    end

    get '/decks/:id' do
        deck = Deck.find(params[:id])
        deck.to_json
    end

    get '/decks/:id/allcards' do
        cards = Deck.find(params[:id]).cards
        cards.to_json
    end

    post '/decks' do
        new_deck = Deck.create(name: params[:name], user_id: params[:user_id], hero_id: params[:hero_id])
        new_deck.to_json
    end

    delete '/decks/:id' do
        deck = Deck.find(params[:id])
        deck.destroy
    end

    delete '/decks/:id/:card_id' do
        converted = params[:card_id].to_i
        card = Deck.find(params[:id]).delete_card(converted)
    end
end