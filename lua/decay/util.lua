local _util = { mt = {} }

_util.bg = "#000000"
_util.fg = "#ffffff"

local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

function _util.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function _util.darken(hex, amount, bg)
  return _util.blend(hex, bg or _util.bg, amount)
end

function _util.lighten(hex, amount, fg)
  return _util.blend(hex, fg or _util.fg, amount)
end

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
