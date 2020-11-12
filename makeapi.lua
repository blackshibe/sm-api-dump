--[[ 

	Whatever whatever
	
	classes folder is affected based on the table below
	.json is searched through, .lua is directly appended

]]

local outputName = "output.lua"
local files = {
	"sm.json";
	"class.lua"
}

local json = require("deps.json")
local stringx = require("deps.stringx")
local output = io.open(outputName, "w")
io.output(output)

local classCount = 1
local apiLines = {}
local classes = {}

local function documentFunction(append, field, fieldData)

	local body = "fun("

	if type(fieldData.params) == "table" then

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

				-- remove unknown
				if filteredArgument:sub(1, 7) == "unknown" then
					filteredArgument = "any"
				end

				body = body..filteredArgument

				if i ~= #v.type and filteredArgument ~= "filteredArgument" then
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

local function document(class, index, fields)

	local smIndex = string.format("sm_%s", index)

	-- define field sm_index
	classes[class][index] = smIndex

	-- define class sm_index
	classCount = classCount + 1
	classes[smIndex] = {}

	-- define class fields
	for field, fieldData in pairs(fields) do
		local fieldType = type(fieldData)

		-- assume function type
		if fieldType == "table" and fieldData.params then
			documentFunction(classes[smIndex], field, fieldData)
		-- add field as type
		else
			classes[smIndex][field] = fieldType
		end
	end

end

local function appendFileContents(str)
	apiLines[#apiLines+1] = " "
	for _, v in pairs(stringx.split(str, "\n", 10000)) do
		apiLines[#apiLines+1] = v
	end
end

for _, file in pairs(files) do
	local api = io.open(string.format("classes/%s", file), "r"):read("*a")
	local readAsJson = file:sub(-4, -1)=="json"
	local class = stringx.split(file, ".")[1]
	
	print("reading", class)
	
	if readAsJson then

		classes[class] = {}
		local apiTable = json.decode(api)
		for index, tbl in pairs(apiTable) do
			local fieldType = type(tbl)
		
			-- check for function type
			if fieldType == "table" and tbl.params then
				documentFunction(classes[class], index, tbl)
		
			-- check for table
			elseif fieldType == "table" then
				document(class, index, tbl)
			-- fuck off br
			else
				print("unaccounted field!", index)
				classes[class][index] = "table"
			end
			
		end
	else

		appendFileContents(api)
	end
end

-- * append classes
for name, fields in pairs(classes) do
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

print("lines", #apiLines)
print("classes", classCount)
print("finished")
