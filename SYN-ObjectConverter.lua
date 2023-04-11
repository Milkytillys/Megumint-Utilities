function ObjectToData(part,Set,ConvertAgainst)
    getgenv().OtdCache = OtdCache or {}
    local Data = OtdCache[part.ClassName] or getprops(part)
    local Set = Set or {}
    local ConvertAgainst = ConvertAgainst or {}
    for i,v in pairs(Data) do
        if Part[i] then
            Data[i] = Part[i]
        end
    end
    for i,v in pairs(part:GetChildren()) do
        Data[v.Name] = v
        if ConvertAgainst[v.Name] then
            Data[v.Name] = ObjectToData(v,unpack(ConvertAgainst[v.Name]))
        end
    end
    for i,v in pairs(Set) do
        Data[i] = v
        if i == "CFrame" then
            Data.Position = v.p
        end
        if i == "Position" then
            Data.CFrame = CFrame.new(v.p)
        end
    end
    return Data
end
return ObjectToData
