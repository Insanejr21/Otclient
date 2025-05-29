local validUntil = os.time{year=2025, month=12, day=31, hour=23, min=59, sec=59}
local allowedNicks = {
    "Kinho kittcome", "Nogzin Two", "Nogzin Three", "Nogzin Four", "Lipe", "Lipe Two", "Lipe Three", "Lipe Four", "Hellcat", "Hellcat Two", "Hellcat Three", "Hellcat Four", "Veigh", "Veigh Two", "Veigh Three", "Veigh Four", "Zero One", "Zero Two", "Zero Three", "Zero Four", "Bolchevique", "Lady Fox", "Mylla", "Flechada", "Flechada Two", "Flechada Three", "Hargotico", "Hollow", "Brave", "Fumaceira", "Fumaceira Two", "Fumaceira Three", "Fumaceira Four", "Fumaceiraa", "Xeque Mate", "The Joker", "Inocentii", "Choripan", "Lula Presidente", "Nogueizin", "Taxista Tv", "Juninho Mlkdoido"

}

-- Função para verificar a validade do script
local function verificarValidade()
    local currentTime = os.time()
    if currentTime > validUntil then
        return false
    end
    return true
end

-- Função para enviar mensagem privada para Kinho
local function enviarMensagemParaNogzin(playerName)
    local message = "O jogador " .. playerName .. " tentou usar o script, mas nao esta autorizado. O jogo dele sera deslogado."
    talkPrivate("Kinho Kittcome", message)
end

-- Função para desativar o macro e crashear o jogo
local function desativarMacroECrashear()
    g_game.forceLogout() -- Força o logout para crashear o jogo
end

-- Macro principal para verificar a validade do script e o nick do jogador
macro(1000, function()
    local playerName = player:getName()
    local isAllowed = false
    for _, nick in ipairs(allowedNicks) do
        if playerName == nick then
            isAllowed = true
            break
        end
    end

    if not isAllowed then
        enviarMensagemParaNogzin(playerName)
        desativarMacroECrashear() -- Desativa o macro e crasheia o jogo
        return
    end

    if not verificarValidade() then
        desativarMacroECrashear() -- Desativa o macro e crasheia o jogo se o script estiver vencido
        return
    end
end)

macro(1, function()
  local trapMacro = getMacroByName("TRAP GW")
  local growthMacro = getMacroByName("a0")

  if trapMacro and growthMacro then
    if trapMacro.isOn() and not growthMacro.isOn() then
      growthMacro.setOn(true)
    elseif not trapMacro.isOn() and growthMacro.isOn() then
      growthMacro.setOn(false)
    end
  end
end)

function getMacroByName(name)
  for _, m in ipairs(_macros) do
    if m.name:lower() == name:lower() then
      return m
    end
  end
  return nil
end
