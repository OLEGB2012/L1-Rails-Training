class GameController < ApplicationController
  def index

  end

  def ping
    logger.info '+++ Redirection Example +++'
    redirect_to game_pong_path
  end

  def pong
    logger.info '+++ Its pong +++'
    redirect_back fallback_location: root_path, notice: 'Ponged to main index page...'
  end
end
