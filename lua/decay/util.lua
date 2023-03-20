local _util = { mt = {} }

function _util:crush(t1, t2)
  for k, v in pairs(t2) do
    t1[k] = v
  end
end

function _util:in_tbl(value, tbl)
  local found = false
  for key, _ in pairs(tbl) do
    if key == value then
      found = true
      goto body_end
    end
  end

  ::body_end::

  return found
end

function _util:in_tbl_list(value, tbl)
  local found = false
  for _, val in ipairs(tbl) do
    if val == value then
      found = true
      goto body_end
    end
  end

  ::body_end::

  return found
end

function _util:table_keys(tbl)
  local ret = {}
  for key, _ in pairs(tbl) do
    table.insert(ret, key)
  end

  return ret
end

function _util:str_tbl_keys(tbl, ignores)
  if not ignores then
    ignores = {}
  end

  local keys = self:table_keys(tbl)
  local ret = ''

  for i, val in ipairs(keys) do
    if self:in_tbl_list(val, ignores) then
      goto continue
    end

    if i == 1 then
      ret = ret .. val
    elseif i > 1 then
      ret = ret .. ', ' .. val
    elseif i == #keys then
      ret = ret .. ' and ' .. val
    end

    ::continue::
  end

  return ret
end

local function new()
  local ret = {}
  _util.crush(nil, ret, _util)

  return ret
end

function _util.mt:__call()
  return new()
end

local Util = setmetatable(_util, _util.mt)

return Util()
