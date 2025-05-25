local allowedNames = {"name1", "name2", "name3"}
if not table.find(allowedNames, name(), true) then
  schedule(1000, function() g_game.logout() end)
  return modules.game_textwindow.onGameEditText(0, 6279, 10000, name() .. ", acesso negado.", "Proteção", "")
end
