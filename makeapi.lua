local json = require("json")

local outputName = "other/output.lua"

local api = io.open("api.json", "r"):read("*a")
local output = io.open(outputName, "w")
io.output(output)

--- API table converted from json
local apiTable = json.decode(api)
local apiLines = {
	"---@class sm";
}

local smMainClassFields = {}
local smClasses = {}

--[[

		"getClosestVisibleCrop" : 
		{
			"params" : 
			[
				
				{
					"type" : [ "unknown: Unit" ]
				}
			],
			"paramsExact" : 1.0,
			"paramsMax" : 1.0,
			"paramsMin" : 1.0,
			"returns" : null
		},

]]

local function documentFunction(append, field, fieldData)

	local body = "fun("

	if type(fieldData.returns) == "table" then

		-- * fun(arg1:fuck1|fuck2, ...)
		for i, v in pairs(fieldData.params) do

			body = body..string.format("arg%s", i)..":"
			local types = {}
			for i, argument in pairs(v.type) do
				local filteredArgument = argument

				-- remove <>
				if filteredArgument:sub(1, 1) == "<" then
					filteredArgument= filteredArgument:sub(2, -2)
				end

				body = body..filteredArgument

				if i ~= #v.type then
					body = body.."|"
				end	
			end

			body = body..table.concat(types)
			if i ~= #fieldData.params then
				body = body..", "
			end	
		end
	end

	body = body..")"

	if type(fieldData.returns) == "table" then

		-- * fun(arg1:fuck1|fuck2, ...): fuck1|fuck2
		body = body..":"
		for i, v in pairs(fieldData.returns) do
			body = body..v.type
			if i ~= #fieldData.returns then
				body = body..", "
			end	
		end
	end
	

	-- append
	append[field] = body
end

local function document(index, fields)

	local smIndex = string.format("sm_%s", index)

	-- define field sm_index
	smMainClassFields[index] = smIndex

	-- define class sm_index
	smClasses[smIndex] = {}

	-- define class fields
	for field, fieldData in pairs(fields) do
		local fieldType = type(fieldData)

		-- assume function type
		if fieldType == "table" and fieldData.params then
			documentFunction(smClasses[smIndex], field, fieldData)
		-- add field as type
		else
			smClasses[smIndex][field] = fieldType
		end
	end

end

-- * document shit
for index, tbl in pairs(apiTable) do
	local fieldType = type(tbl)

	-- check for function type
	if fieldType == "table" and tbl.params then
		documentFunction(smMainClassFields, index, tbl)

	-- check for table
	elseif fieldType == "table" then
		document(index, tbl)
	-- fuck off br
	else
		print("unaccounted field!", index)
		smMainClassFields[index] = "table"
	end
	
end

-- * append MAIN class fields
for name, type in pairs(smMainClassFields) do
	apiLines[#apiLines+1] = string.format("---@field %s %s", name, type)
end

-- * append classes
for name, fields in pairs(smClasses) do
	apiLines[#apiLines+1] = string.format(" ", name, type)
	apiLines[#apiLines+1] = string.format("---@class %s", name)

	for field, fieldType in pairs(fields) do
		apiLines[#apiLines+1] = string.format("---@field %s %s", field, fieldType)
	end
end

-- * append newline
for index, value in pairs(apiLines) do
	apiLines[index] = value.."\n"
end


output:write(table.concat(apiLines))
output:close()

print("finished")