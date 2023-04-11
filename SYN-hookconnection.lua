getgenv()._connections = getgenv()._connections or {}
getgenv()._getconnections = getgenv()._getconnections or getconnections
getgenv().getconnections = function(signal)
   local dat = _getconnections(signal)
   for i=#dat,1,-1 do
       local v = dat[i]
       if table.find(_connections,dat[i]) then
           table.remove(dat,i)
       end
   end
   return dat
end

getgenv().hookconnection = function(connection,index,newfunc)
   local Cont = getconnections(connection)[index]
   Cont:Disable()
   table.insert(__connections,connection:Connect(newfunc))
   return Cont.Function
end
