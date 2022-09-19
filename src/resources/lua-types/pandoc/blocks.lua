---@meta


--[[
List of `Block` elements, with the same methods as a generic
`List`, but also supporting a `walk` method.
]]
---@class pandoc.Blocks : pandoc.List
pandoc.Blocks = {}

--[[
Create a blocks list 
]]
---@param blocks table|pandoc.List Block or list of blocks
---@return pandoc.List 
function pandoc.Blocks(blocks) end




--======================== BlockQuote ========================

--[[
A block quote element
]]
---@class pandoc.BlockQuote 
---@field content pandoc.List
---@field t "BlockQuote"
---@field tag "BlockQuote"
pandoc.BlockQuote = {}

--[[
Creates a block quote element
]]
---@param content table|pandoc.List
---@return pandoc.BlockQuote
function pandoc.BlockQuote(content) end

--[[
Make a clone
]]
---@return pandoc.BlockQuote
function pandoc.BlockQuote:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.BlockQuote 
function pandoc.BlockQuote:walk(lua_filter) end

--======================== BulletList ========================

--[[
A bullet list 
]]
---@class pandoc.BulletList 
---@field content pandoc.List Bullet list items
---@field t "BulletList"
---@field tag "BulletList"
pandoc.BulletList = {}

--[[
Creates a bullet list element
]]
---@param content table|pandoc.List Bullet list items
---@return pandoc.BulletList
function pandoc.BulletList(content) end

--[[
Make a clone
]]
---@return pandoc.BulletList
function pandoc.BulletList:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.BulletList 
function pandoc.BulletList:walk(lua_filter) end

--======================== CodeBlock ========================

--[[
Block of code
]]
---@class pandoc.CodeBlock
---@field text string Code string
---@field attr pandoc.Attr Cell attributes
---@field identifier string Alias for `attr.identifier`
---@field classes table Alias for `attr.classes`
---@field attributes table<string,string> Alias for `attr.attributes`
---@field t "CodeBlock"
---@field tag "CodeBlock"
pandoc.CodeBlock = {}

--[[
Creates a code block element
]]
---@param text string Code string
---@param attr? pandoc.Attr Cell attributes
---@return pandoc.CodeBlock
function pandoc.CodeBlock(text, attr) end

--[[
Make a clone
]]
---@return pandoc.CodeBlock
function pandoc.CodeBlock:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.CodeBlock 
function pandoc.CodeBlock:walk(lua_filter) end

--======================== DefinitionList ========================

--[[
Definition list, containing terms and their explanation.
]]
---@class pandoc.DefinitionList 
---@field content table|pandoc.List List of items
---@field t "DefinitionList"
---@field tag "DefinitionList"
pandoc.DefinitionList = {}

--[[
Creates a definition list, containing terms and their explanation.
]]
---@param content pandoc.List
---@return pandoc.DefinitionList
function pandoc.DefinitionList(content) end

--[[
Make a clone
]]
---@return pandoc.DefinitionList
function pandoc.DefinitionList:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.DefinitionList 
function pandoc.DefinitionList:walk(lua_filter) end

--======================== Div ========================

--[[
Generic block container with attributes.
]]
---@class pandoc.Div
---@field content pandoc.List Block content (list of blocks)
---@field attr pandoc.Attr Block attributes
---@field identifier string Alias for `attr.identifier`
---@field classes table Alias for `attr.classes`
---@field attributes table<string,string> Alias for `attr.attributes`
---@field t "Div"
---@field tag "Div"
pandoc.Div = {}

--[[
Creates a div dlement
]]
---@param content table|pandoc.List Div content (list of blocks)
---@param attr? pandoc.Attr Div attributes
---@return pandoc.Div
function pandoc.Div(content, attr) end

--[[
Make a clone
]]
---@return pandoc.Div
function pandoc.Div:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Div 
function pandoc.Div:walk(lua_filter) end


--======================== Header ========================

--[[
Header element
]]
---@class pandoc.Header
---@field level integer Header level
---@field content pandoc.List Header content (list of inlines)
---@field attr pandoc.Attr Header attributes
---@field identifier string Alias for `attr.identifier`
---@field classes table Alias for `attr.classes`
---@field attributes table<string,string> Alias for `attr.attributes`
---@field t "Header"
---@field tag "Header"
pandoc.Header = {}

--[[
Creates a header element
]]
---@param level integer Header level
---@param content table|pandoc.List Header content (list of inlines)
---@param attr? pandoc.Attr Header attributes
---@return pandoc.Header
function pandoc.Header(level, content, attr) end

--[[
Make a clone
]]
---@return pandoc.Header
function pandoc.Header:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Header 
function pandoc.Header:walk(lua_filter) end


--======================== HorizontalRule ========================

--[[
A horizontal rule
]]
---@class pandoc.HorizontalRule 
---@field t "HorizontalRule"
---@field tag "HorizontalRule"
pandoc.HorizontalRule = {}

--[[
Creates a horizontal rule
]]
---@return pandoc.HorizontalRule
function pandoc.HorizontalRule() end

--[[
Make a clone
]]
---@return pandoc.HorizontalRule
function pandoc.HorizontalRule:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.HorizontalRule 
function pandoc.HorizontalRule:walk(lua_filter) end


--======================== LineBlock ========================

--[[
A line block, i.e. a list of lines, each separated from the next by a newline.
]]
---@class pandoc.LineBlock 
---@field content table|pandoc.List List of lines, each of which is a list of inlines
---@field t "LineBlock"
---@field tag "LineBlock"
pandoc.LineBlock = {}

--[[
Creates a line block element
]]
---@param content pandoc.List List of lines, each of which is a list of inlines
---@return pandoc.LineBlock
function pandoc.LineBlock(content) end

--[[
Make a clone
]]
---@return pandoc.LineBlock
function pandoc.LineBlock:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.LineBlock 
function pandoc.LineBlock:walk(lua_filter) end



--======================== Null ========================

--[[
A null element; this element never produces any output in the target format.
]]
---@class pandoc.Null 
---@field t "Null"
---@field tag "Null"
pandoc.Null = {}

--[[
Creates a null element 
]]
---@return pandoc.Null
function pandoc.Null() end

--[[
Make a clone
]]
---@return pandoc.Null
function pandoc.Null:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Null 
function pandoc.Null:walk(lua_filter) end


--======================== OrderedList ========================

--[[
An ordered list.
]]
---@class pandoc.OrderedList
---@field content table|pandoc.List List of items (blocks)
---@field listAttributes pandoc.ListAttributes List parameters
---@field start integer Alias for `listAttributes.start`
---@field style list_style Alias for `listAttributes.style`
---@field delimeter list_delimeter Alias for `listAttributes.delimiter`
---@field t "OrderedList"
---@field tag "OrderedList"
pandoc.OrderedList = {}

--[[
Create an ordered list
]]
---@param items pandoc.List List of items (blocks)
---@param listAttributes? pandoc.ListAttributes List parameters
---@return pandoc.OrderedList
function pandoc.OrderedList(items, listAttributes) end

--[[
Make a clone
]]
---@return pandoc.OrderedList
function pandoc.OrderedList:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.OrderedList 
function pandoc.OrderedList:walk(lua_filter) end



--======================== Para ========================

--[[
A paragraph
]]
---@class pandoc.Para
---@field content table|pandoc.List Inline content (list of inlines)
---@field t "Para"
---@field tag "Para"
pandoc.Para = {}

--[[
Creates a paragraph element
]]
---@param content pandoc.List Inline content (list of inlines)
---@return pandoc.Para
function pandoc.Para(content) end

--[[
Make a clone
]]
---@return pandoc.Para
function pandoc.Para:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Para 
function pandoc.Para:walk(lua_filter) end

--======================== Plain ========================

--[[
Plain text, not a paragarph
]]
---@class pandoc.Plain
---@field content table|pandoc.List Inline content (list of inlines)
---@field t "Plain"
---@field tag "Plain"
pandoc.Plain = {}

--[[
Creates a plain element
]]
---@param content pandoc.List Inline content (list of inlines)
---@return pandoc.Plain
function pandoc.Plain(content) end

--[[
Make a clone
]]
---@return pandoc.Plain
function pandoc.Plain:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Plain 
function pandoc.Plain:walk(lua_filter) end


--======================== RawBlock ========================

--[[
Raw content of a specified format
]]
---@class pandoc.RawBlock
---@field format string Format of content
---@field text string Raw content
---@field t "RawBlock"
---@field tag "RawBlock"
pandoc.RawBlock = {}

--[[
Creates a raw block element
]]
---@param format string Format of content
---@param text string Rawe content
---@return pandoc.RawBlock
function pandoc.RawBlock(format, text) end

--[[
Make a clone
]]
---@return pandoc.RawBlock
function pandoc.RawBlock:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.RawBlock 
function pandoc.RawBlock:walk(lua_filter) end


--======================== Table ========================

--[[
A table

A table cell is a list of blocks.

Alignment is a string value indicating the horizontal alignment of a table column. AlignLeft, AlignRight, and AlignCenter
leads cell content to be left-aligned, right-aligned, and centered, respectively. The default alignment is AlignDefault 
(often equivalent to centered).
]]
---@class pandoc.Table
---@field attr pandoc.Attr Table attributes
---@field identifier string Alias for `attr.identifier`
---@field classes table Alias for `attr.classes`
---@field attributes table<string,string> Alias for `attr.attributes`
---@field caption pandoc.Caption Table caption
---@field colspecs pandoc.List Column specifications, i.e., alignments and widths (list of `ColSpec`)
---@field head pandoc.TableHead Table head
---@field bodies pandoc.List Table bodies (list of `TableBody`)
---@field foot pandoc.TableFoot Table foot
---@field t "Table"
---@field tag "Table"
pandoc.Table = {}

---@param caption pandoc.Caption Table caption
---@param colspecs pandoc.List Column specifications, i.e., alignments and widths (list of `ColSpec`)
---@param head pandoc.TableHead Table head
---@param bodies pandoc.List Table bodies (list of `TableBody`)
---@param foot pandoc.TableFoot Table foot
---@param attr? pandoc.Attr Table attributes
---@return pandoc.Table
function pandoc.Table(caption, colspecs, head, bodies, foot, attr) end

--[[
Make a clone
]]
---@return pandoc.Table
function pandoc.Table:clone() end

--[[
Apply a Lua filter
]]
---@param lua_filter table<string,function> Map of filter functions
---@return pandoc.Table 
function pandoc.Table:walk(lua_filter) end