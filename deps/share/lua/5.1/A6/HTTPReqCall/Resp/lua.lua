-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: HTTPReqCall

local flatbuffers = require('flatbuffers')

local Resp = {} -- the module
local Resp_mt = {} -- the class metatable

function Resp.New()
    local o = {}
    setmetatable(o, {__index = Resp_mt})
    return o
end
function Resp.GetRootAsResp(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Resp.New()
    o:Init(buf, n + offset)
    return o
end
function Resp_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Resp_mt:Id()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint32, o + self.view.pos)
    end
    return 0
end
function Resp_mt:ActionType()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint8, o + self.view.pos)
    end
    return 0
end
function Resp_mt:Action()
    local o = self.view:Offset(8)
    if o ~= 0 then
        local obj = flatbuffers.view.New(require('flatbuffers.binaryarray').New(0), 0)
        self.view:Union(obj, o)
        return obj
    end
end
function Resp.Start(builder) builder:StartObject(3) end
function Resp.AddId(builder, id) builder:PrependUint32Slot(0, id, 0) end
function Resp.AddActionType(builder, actionType) builder:PrependUint8Slot(1, actionType, 0) end
function Resp.AddAction(builder, action) builder:PrependUOffsetTRelativeSlot(2, action, 0) end
function Resp.End(builder) return builder:EndObject() end

return Resp -- return the module