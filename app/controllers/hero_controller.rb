class HeroController < ApplicationController
    get '/heros' do
        heros = Hero.all
        heros.to_json
    end

    get '/heros/Mage' do
        mage = Hero.find_by_name("Mage").cards
        mage.to_json
    end

    get '/heros/Druid' do
        druid = Hero.find_by_name("Druid").cards
        druid.to_json
    end

    get '/heros/warrior' do
        warrior = Hero.find_by_name("warrior").cards
        warrior.to_json
    end
end