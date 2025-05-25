local allowedNames = {"name1", "name2", "name3"} -- Substitua pelos nomes permitidos

if not table.find(allowedNames, name(), true) then
  modules.game_textwindow.onGameEditText(0, 6279, 10000, name() .. ", acesso negado.", "Proteção", "")
  schedule(500, function()
    g_app.exit() -- Fecha o cliente OTC
  end)
  return
end
