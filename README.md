# Welcome to My Lua Utilities Collection!

Hi, I'm  **ชานม หวาน น้อย** or you can also call me **Megumint** . If you want to learn about luau, finding useful library,  you can feel free to use my modules.

![Have fun!](https://i.imgur.com/0jzjYZH.gif)
## **Type**
- RBX - Support for Roblox & Executor
- SYN/Executor - Support for Executor
- Blank - Support on all lua platform

## **Information**
| Type | File |
| ------ | ------ |
| Universal | [ThreadLooper][TL] |
| Universal | [Priority][PRI] |
| Roblox | [FastNetwork][FN] |
| Executor | [ClearSignal][CS] |
| Executor | [ObjectConverter][OC] |
| Executor | [HookConnection][HC] |

## **Documentation**
| File | Docs |
| ------ | ------ |
[ThreadLooper][TL] | [TL-Docs.md][RICKROLL] |
[Priority][PRI] | [PRI-Docs.md][RICKROLL] |
[FastNetwork][FN] | [FN-Docs.md][RICKROLL] |
[ClearSignal][CS] | [CS-Docs.md][RICKROLL] |
[ObjectConverter][OC] | [OC-Docs.md][RICKROLL] |
[HookConnection][HC] | [HC-Docs.md][RICKROLL] |

#### __Thread Looper Example__
```lua
local ThreadLooper = require("./ThreadLooper.lua")

local LoopController = ThreadLooper.new()

-- 5 repetitions
local First = LoopController:newThread(0.1,function(self)
    -- to force the thread to perform the next assignment, see if this thread run success amount has no decimal.
    if self.finished%2 == 0 then
        self:Finish()
    end
    print("Hello")
end,10)

-- 3 repetitions
LoopController:newThread(0.1,function(self)
    warn("YAAAA")
end,3)

-- Print "huuu" once
LoopController:newThread(0.1,function(self)
    print("huuu")
    self:Disable() -- Disable and Close this thread from begin looping instantly
end)

task.wait(.5)
LoopController:Destroy() --[[
    Permanent Disable this loop
    That implies that every thread attached to the loop will eventually die.
]]
```

## License
MIT
**Free :)**


[FN]: <https://github.com/Poopland/Megumint-Utilities/blob/main/RBX-FastNetwork.lua>
[CS]: <https://github.com/Poopland/Megumint-Utilities/blob/main/SYN-ClearSignal.lua>
[OC]: <https://github.com/Poopland/Megumint-Utilities/blob/main/SYN-ObjectConverter.lua>
[HC]: <https://github.com/Poopland/Megumint-Utilities/blob/main/SYN-hookconnection.lua>
[TL]: <https://github.com/Poopland/Megumint-Utilities/blob/main/ThreadLooper.lua>
[PRI]: <https://github.com/Poopland/Megumint-Utilities/blob/main/Priority.lua>
[RICKROLL]: <https://www.youtube.com/watch?v=dQw4w9WgXcQ>
