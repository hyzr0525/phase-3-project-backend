class HeroController < ApplicationController
    get '/heros' do
        heros = Hero.all
        heros.to_json
    end

    get '/heros/mage' do
        mageHeros = Hero.find_by_name("Mage").cards
        mageHeros.to_json
    end

    get '/heros/druid' do
        mageHeros = Hero.find_by_name("Druid").cards
        mageHeros.to_json
    end

    get '/heros/warrior' do
        mageHeros = Hero.find_by_name("warrior").cards
        mageHeros.to_json
    end
end