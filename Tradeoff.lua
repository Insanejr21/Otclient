----------------------------------------aura lvl 1 ------------------------------------------------------

local itemIDs = {3232 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 25")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "AURA LVL 1", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

--------------------------------------------------------------------------------------------------------

local itemIDs = {8022, 11362, 8103 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 20")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "ARMAS TEMPLARIAS", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

--------------------------------------------------------------------------------------------------------

local itemIDs = {2869 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 15")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "ULTRA BOOST HEALING", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

--------------------------------------------------------------------------------------------------------

local itemIDs = {2865 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 30")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "DODGE E CRITICAL", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

--------------------------------------------------------------------------------------------------------

local itemIDs = {2870 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 40")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "COMBO EGGS EXP", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

--------------------------------------------------------------------------------------------------------

local itemIDs = {2867 }
local currentItemIndex = 1
local slot = SlotAmmo
local lastTradeTime = 0
local tradeCooldown = 10000

local function equipItem(itemID)
    local inventoryItem = g_game.getLocalPlayer():getInventoryItem(slot)
    if inventoryItem and inventoryItem:getId() == itemID then
        return true
    end

    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                moveToSlot(item, slot)
                return true
            end
        end
    end
    return false
end

local function hasItems(itemID)
    local count = 0
    local containers = g_game.getContainers()
    for _, container in pairs(containers) do
        for _, item in ipairs(container:getItems()) do
            if item:getId() == itemID then
                count = count + 1
            end
        end
    end
    return count > 0
end

local function addTradeoffCommand()
    local currentTime = os.time() * 1000

    if currentTime - lastTradeTime >= tradeCooldown then
        local currentItemID = itemIDs[currentItemIndex]

        if equipItem(currentItemID) then
            g_game.talk("!tradeoff add, premium point, 150")
            lastTradeTime = currentTime
        else
            if not hasItems(currentItemID) then
                currentItemIndex = currentItemIndex + 1
                if currentItemIndex > #itemIDs then
                    return
                end
            end
        end
    end
end

macro(100, "MELHOR SET FULL", function()
    if currentItemIndex <= #itemIDs then
        addTradeoffCommand()
    else
        return
    end
end)

-------------------------------------------------------REMOVE OFFERS-------------------------------------------------




getOfferIDs = function()
    local ids = {}
    for id in (storage.RemoveOffersText or ""):gmatch("%d+") do
        table.insert(ids, tonumber(id))
    end
    return ids
end

onTextMessage(function(mode, text)
    if text and text:match("Active offers ID:") then
        local newText = storage.RemoveOffersText or ""
        local added = false
        for id in text:gmatch("%d+") do
            if not newText:find(id) then
                newText = newText == "" and id or newText .. ", " .. id
                print("ID detectado e adicionado: " .. id)
                added = true
            end
        end
        if added then
            storage.RemoveOffersText = newText
        end
    end

    if text and text:lower():find("please, insert a valid offer id") then
        print("Mensagem de ID inválido detectada. Limpando lista...")
        storage.RemoveOffersText = ""
        currentIndex = 1
    end
end)

local lastRemoveTime = 0
local removeInterval = 10 -- segundos
currentIndex = 1

macro(100, "REMOVER OFFERS", function()
    local nowTime = os.time()
    local ids = getOfferIDs()

    if #ids == 0 and nowTime - lastRemoveTime >= removeInterval then
        say("!tradeoff active")
        print("Comando enviado: !tradeoff active")
        lastRemoveTime = nowTime
        return
    end

    if currentIndex > #ids then currentIndex = 1 end

    if nowTime - lastRemoveTime >= removeInterval then
        local idToRemove = ids[currentIndex]
        say("!tradeoff remove, " .. idToRemove)
        print("Tentando remover ID: " .. idToRemove)
        lastRemoveTime = nowTime
        currentIndex = currentIndex + 1
    end
end)
--------------------------------------------------------------------
-----------------------MOVER PARCEL-------------------------
local parcelId = 3504
local localDelay = 600
local lastMoveTime = 0
local messageSent = false

macro(250, "Mover Parcel", function()
  local now = now
  if now - lastMoveTime < localDelay then return end

  local sourceParcel, targetParcel = nil, nil

  -- Localiza dois parcels
  for _, container in pairs(getContainers()) do
    for slot = 0, container:getCapacity() - 1 do
      local item = container:getItem(slot)
      if item and item:getId() == parcelId then
        if not sourceParcel then
          sourceParcel = item
        elseif not targetParcel then
          targetParcel = item
          break
        end
      end
    end
    if sourceParcel and targetParcel then break end
  end

  -- Move um parcel dentro do outro
  if sourceParcel and targetParcel then
    g_game.move(sourceParcel, targetParcel:getPosition())
    messageSent = false
  elseif not messageSent then
    messageSent = true
  end

  -- Move os itens (exceto parcels) para dentro do primeiro parcel encontrado
  local destino = targetParcel or sourceParcel
  if destino then
    for _, container in pairs(getContainers()) do
      for slot = 0, container:getCapacity() - 1 do
        local item = container:getItem(slot)
        if item and item:getId() ~= parcelId then
          g_game.move(item, destino:getPosition(), item:getCount())
          lastMoveTime = now
          return
        end
      end
    end
  end
end)