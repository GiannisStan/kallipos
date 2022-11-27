function Image(img)
    if img.classes:find('it-bold',1) then
      local f = io.open("adition/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption)
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.id)
      local stud_info = "- **Ονοματεπώνυμο: " .. name .. "**\n >" .. " \n - **Αριθμός Μητρώου: " .. am .. "**"
      local content = '> _' .. caption .. '_ \n >' .. '\n' .. stud_info .. ''
      return pandoc.RawInline('markdown',content)
    end
end
