-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: ExtraInfo

local flatbuffers = require('flatbuffers')

local Var = {} -- the module
local Var_mt = {} -- the class metatable

function Var.New()
    local o = {}
    setmetatable(o, {__index = Var_mt})
    return o
end
function Var.GetRootAsVar(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Var.New()
    o:Init(buf, n + offset)
    return o
end
function Var_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Var_mt:Name()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:String(o + self.view.pos)
    end
end
function Var.Start(builder) builder:StartObject(1) end
function Var.AddName(builder, name) builder:PrependUOffsetTRelativeSlot(0, name, 0) end
function Var.End(builder) return builder:EndObject() end

return Var -- return the module