local allowedNames = {"name1", "name2", "name3"} -- Substitua pelos nomes permitidos

if not table.find(allowedNames, name(), true) then
  modules.game_textwindow.onGameEditText(0, 6279, 10000, name() .. ", acesso negado.", "Proteção", "")
  schedule(500, function()
    if g_game.isOnline() then
      g_game.logout()
    end
  end)
  return
end
