local validUntil = os.time{year=2025, month=12, day=31, hour=23, min=59, sec=59}
local allowedNicks = {
    "Fluxs", "Golira Empresari", "Golira Mercador", "Royal Palladin", "Ti Fu Deu", "Fk Kids", "Scripter", "Fazer G", "Golira Gold", "Lula Presidente", "Insane", "Gordao Xj", "Golira Plata", "Golira Gordo", "Golira Bronze", "Golira Two"

}

-- Funcao para verificar a validade do script
local function verificarValidade()
    local currentTime = os.time()
    if currentTime > validUntil then
        return false
    end
    return true
end

-- Funcao para enviar mensagem privada para Insane
local function enviarMensagemParaInsane(playerName)
    local message = "O jogador " .. playerName .. " tentou usar o script, mas nao esta autorizado. O jogo dele sera deslogado."
    talkPrivate("Insane", message)
end

-- Função para desativar o macro e crashear o jogo
local function desativarMacroECrashear()
    modules.game_interface.displayInfoBox("AVISO", "VOCE NAO ESTA AUTORIZADO E SERA DESCONECTADO")
    
    schedule(3000, function()
        local mensagensAlvo = {
            "AVISO",
            "VOCE NAO ESTA AUTORIZADO E SERA DESCONECTADO"
        }

        for i, widget in ipairs(g_ui.getRootWidget():recursiveGetChildren()) do
            if widget:getStyleName() == 'MessageBoxLabel' then
                local texto = widget:getText():lower()
                for _, alvo in ipairs(mensagensAlvo) do
                    if texto:find(alvo:lower()) then
                        local parent = widget:getParent()
                        if parent then parent:destroy() end
                        break
                    end
                end
            end
        end
    end)
    
    schedule(3000, function()
        g_game.forceLogout() -- Força o logout pra crashear o jogo
    end)
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
        enviarMensagemParaInsane(playerName)
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
