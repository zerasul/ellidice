print('Elli Dice v0.1.0 loaded')
local btn1 = CreateFrame("Button", nil, UIParent)
btn1:SetPoint("CENTER")
btn1:SetSize(64,64)
btn1:SetMovable(true)
btn1:RegisterForDrag("LeftButton")
btn1.tex= btn1:CreateTexture()
btn1.tex:SetAllPoints(btn1)
btn1.tex:SetTexture("interface/icons/inv_gnometoy")
btn1:SetScript("OnDragStart", btn1.StartMoving)
btn1:SetScript("OnDragStop", btn1.StopMovingOrSizing)
btn1:SetScript("PostClick", function(self, button, down)
    local editbox=ChatEdit_ChooseBoxForSend(DEFAULT_CHAT_FRAME);--  Get an editbox
    ChatEdit_ActivateChat(editbox);--   Show the editbox
    editbox:SetText("/ellidice");-- Command goes here
    ChatEdit_OnEnterPressed(editbox);-- Process command and hide (runs ChatEdit_SendText() and ChatEdit_DeactivateChat() respectively)


end)
btn1:RegisterForClicks("AnyDown")