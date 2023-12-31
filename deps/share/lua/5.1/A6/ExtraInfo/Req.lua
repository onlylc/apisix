-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: ExtraInfo

local flatbuffers = require('flatbuffers')

local Req = {} -- the module
local Req_mt = {} -- the class metatable

function Req.New()
    local o = {}
    setmetatable(o, {__index = Req_mt})
    return o
end
function Req.GetRootAsReq(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Req.New()
    o:Init(buf, n + offset)
    return o
end
function Req_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Req_mt:InfoType()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint8, o + self.view.pos)
    end
    return 0
end
function Req_mt:Info()
    local o = self.view:Offset(6)
    if o ~= 0 then
        local obj = flatbuffers.view.New(require('flatbuffers.binaryarray').New(0), 0)
        self.view:Union(obj, o)
        return obj
    end
end
function Req.Start(builder) builder:StartObject(2) end
function Req.AddInfoType(builder, infoType) builder:PrependUint8Slot(0, infoType, 0) end
function Req.AddInfo(builder, info) builder:PrependUOffsetTRelativeSlot(1, info, 0) end
function Req.End(builder) return builder:EndObject() end

return Req -- return the module