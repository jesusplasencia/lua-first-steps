local MyTable = {}

-- both lines represent the same thing
function MyTable.something(self, ...) end
function MyTable:something(...) end