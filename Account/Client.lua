local BG = guiCreateStaticImage(0,0,1,1,"gta.jpg",true)
guiSetEnabled(BG,false)

local Account = guiCreateWindow(0.25,0.25,0.5,0.5,"Account System",true)
local TAccount = guiCreateTabPanel(0,0.05,1,1,true,Account)
showCursor(true)

-----------------------------------------------------------Login
local Login = guiCreateTab("Login",TAccount)

guiCreateLabel(0.45,0.13,0.1,0.1,"UserName",true,Login)
guiCreateLabel(0.45,0.33,0.1,0.1,"Password",true,Login)

local LT_UserName = guiCreateEdit(0.25,0.2,0.5,0.1,"",true,Login)
local LT_Password = guiCreateEdit(0.25,0.4,0.5,0.1,"",true,Login)

local L_Dokme = guiCreateButton(0.35,0.75,0.3,0.2,"Login",true,Login)




----------------------------------------------------------- Register
local Register = guiCreateTab("Register",TAccount)

guiCreateLabel(0.45,0.13,0.1,0.1,"UserName",true,Register)
guiCreateLabel(0.45,0.33,0.1,0.1,"Password",true,Register)
guiCreateLabel(0.45,0.53,0.1,0.1,"RePassword",true,Register)

local RT_UserName = guiCreateEdit(0.25,0.2,0.5,0.1,"",true,Register)
local RT_Password = guiCreateEdit(0.25,0.4,0.5,0.1,"",true,Register)
local RT_RePassword = guiCreateEdit(0.25,0.6,0.5,0.1,"",true,Register)

local R_Dokme = guiCreateButton(0.35,0.75,0.3,0.2,"Register",true,Register)


addEventHandler("onClientGUIClick",root,function()
    if source == R_Dokme then 
        if string.len(guiGetText(RT_UserName)) >= 3 then 
            if string.len(guiGetText(RT_Password)) >= 8 then 
                if guiGetText(RT_Password) == guiGetText(RT_RePassword) then 
                    triggerServerEvent("Register",getLocalPlayer(),guiGetText(RT_UserName),guiGetText(RT_Password))
                else
                    --outputChatBox("Password Shoma Yeki Nist.")
                    exports["notices"]:addNotification("Password Shoma Yeki Nist","error")
                end
            else
                --outputChatBox("Password Shoma Ashtebah Ast.")
                exports["notices"]:addNotification("Password Shoma Ashtebah Ast","error")
            end
        else
            --outputChatBox("UserName Shoma Ashtebah Ast.")
            exports["notices"]:addNotification("UserName Shoma Ashtebah Ast","error")
        end
    elseif source == L_Dokme then 
        triggerServerEvent("Login",getLocalPlayer(),guiGetText(LT_UserName),guiGetText(LT_Password))
    end
end)

addEvent("Login",true)
addEventHandler("Login",getRootElement(),function()
    showCursor(false)
    guiSetVisible(Account,false)
    guiSetVisible(BG,false)
end)

triggerServerEvent("Remember",getLocalPlayer())


addEvent("Remember",true)
addEventHandler("Remember",getRootElement(),function(UserName,Password)
    guiSetText(LT_UserName,UserName)
    guiSetText(LT_Password,Password)
end)

exports["notices"]:addNotification("Welcome","info")