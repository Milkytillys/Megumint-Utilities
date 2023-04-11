function ClearSignal(Connection,RobloxConnection)
    for i,v in pairs(getconnections(Connection)) do
        if v.Function and (RobloxConnection or (isexecutorclosure or is_synapse_function)(v.Function)) then
            v:Disable()
        end
    end
end
return ClearSignal
