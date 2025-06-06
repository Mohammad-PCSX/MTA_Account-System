addEvent("Remember",true)
addEventHandler("Remember",getRootElement(),function()
    local Query = dbQuery(DataBase,"SELECT * FROM `account` WHERE `Serial`=?",getPlayerSerial(source))
    local re = dbPoll(Query,-1)
    if re[1] and re[1]["Remember"] then 
        local SP = split(re[1]["Remember"],",")
        triggerClientEvent(source,"Remember",source,SP[1],SP[2])
    end
end)

DataBase = exports["mysql"]:MySQL()

dbExec(DataBase,"UPDATE `account` SET `Online`=?",0)

function Login(thePlayer,Data)
    --- Spawn
    spawnPlayer(thePlayer,Data["X"],Data["Y"],Data["Z"],Data["R"],Data["Skin"])
    fadeCamera(thePlayer,true)
    setCameraTarget(thePlayer,thePlayer)
    --- 
    setPlayerName(thePlayer,Data["UserName"])
    setPlayerMoney(thePlayer,Data["Money"])
    setPlayerWantedLevel(thePlayer,Data["Wanted"])
    triggerClientEvent(thePlayer,"Login",thePlayer)
    exports["notices"]:addNotification(thePlayer,"Shoma Vared Server Shodid","success")
    dbExec(DataBase,"UPDATE `account` SET `Online`=?,`Remember`=? WHERE `UserName`=?",1,Data["UserName"]..","..Data["Password"],Data["UserName"])
end

addEventHandler("onPlayerQuit",getRootElement(),function()
    local x,y,z = getElementPosition(source)
    local _,_,r = getElementRotation(source)
    dbExec(DataBase,"UPDATE `account` SET `Money`=?,`Skin`=?,`Wanted`=?,`X`=?,`Y`=?,`Z`=?,`R`=?,`Online`=? WHERE `UserName`=?",getPlayerMoney(source),getElementModel(source),getPlayerWantedLevel(source),x,y,z,r,0,getPlayerName(source))
end)

addEventHandler("onPlayerChangeNick",getRootElement(),function()
    cancelEvent()
end)

addEventHandler("onPlayerJoin",getRootElement(),function()
    setPlayerName(source,"NotLogin["..math.random(10000,99999).."]")
end)

addEvent("Login",true)
addEventHandler("Login",getRootElement(),function(UserName,Password)
    local Query = dbQuery(DataBase,"SELECT * FROM `account` WHERE `UserName`=?",UserName)
    local re = dbPoll(Query,-1)
    if re[1] then 
        if re[1]["Password"] == Password then  
            if re[1]["Serial"] == getPlayerSerial(source) then  
                if re[1]["Online"] ~= 1 then  
                    Login(source,re[1])
                else
                    --outputChatBox("In Account Online Ast.",source,255,0,0)
                    exports["notices"]:addNotification(source,"In Account Online Ast","error")
                end
            else
                --outputChatBox("Serial Shoma Ba In Account Shebahat Nadarad.",source,255,0,0)
                exports["notices"]:addNotification(source,"Serial Shoma Ba In Account Shebahat Nadarad","error")
            end
        else
            --outputChatBox("Password Morede Nazar Eshtebah Ast.",source,255,0,0)
            exports["notices"]:addNotification(source,"Password Morede Nazar Eshtebah Ast","error")
        end
    else
        --outputChatBox("In User Vojod Nadarad.",source,255,0,0)
        exports["notices"]:addNotification(source,"In User Vojod Nadarad","error")
    end
end)

addEvent("Register",true)
addEventHandler("Register",getRootElement(),function(UserName,Password)
    local Query = dbQuery(DataBase,"SELECT * FROM `account` WHERE `UserName`=?",UserName)
    local re = dbPoll(Query,-1)
    dbFree(Query)
    if not re[1] then 
        local Query = dbQuery(DataBase,"SELECT * FROM `account` WHERE `Serial`=?",getPlayerSerial(source))
        local re2 = dbPoll(Query,-1)
        dbFree(Query)
        if not re2[1] then 
            --outputChatBox("Account Shoma Sakhte Shod.",source,0,255,0)
            exports["notices"]:addNotification(source,"Account Shoma Sakhte Shod","success")
            dbExec(DataBase,"INSERT INTO `account` (UserName,Password,Serial) VALUES (?,?,?)",UserName,Password,getPlayerSerial(source))
        else
            --outputChatBox("Shoma Yek Account Ba Name ["..re2[1]["UserName"].."] Darid!",source,255,0,0)
            exports["notices"]:addNotification(source,"Shoma Yek Account Ba Name ["..re2[1]["UserName"].."] Darid!","error")
        end
    else
        --outputChatBox("In UserName Vojod Dare!",source,255,0,0)
        exports["notices"]:addNotification(source,"In User Vojod Nadarad","error")
    end
end)