Rails.application.routes.draw do
  get 'game/play'
  root 'game#play'
end
