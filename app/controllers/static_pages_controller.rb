class StaticPagesController < ApplicationController
  def index
    @cards = Card.all
  end
end
