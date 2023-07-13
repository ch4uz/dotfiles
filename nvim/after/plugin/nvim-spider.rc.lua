local status, comment = pcall(require, "NvimSpider")
if (not status) then return end

-- default value
require("spider").setup({
  skipInsignificantPunctuation = true
})
