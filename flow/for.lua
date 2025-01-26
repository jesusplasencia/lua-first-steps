local favorite_dishes = { "ceviche", "papa rellena", "chicha morada" };
for index = 1, #favorite_dishes do
    print(index, favorite_dishes[index])
end

-- for index, value in ipairs(favorite_dishes) do
--     print(index, value)
-- end

local reading_scores = { teej_dv = 10.20, ThePrimeagen = "N/A" }
for key, value in pairs(reading_scores) do
    print(key, value)
end