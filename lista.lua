local allowedNames = {"Kinho Kittcome", "name2", "name3"} -- Substitua pelos nomes permitidos
if not table.find(allowedNames, name(), true) then
  return modules.game_textwindow.onGameEditText(0, 6279, 10000, name() .. ", você não tem permissão para usar este script.", "Acesso Negado", "")
end

