url = "https://www.cash.ch/Kurse"
--url = "http://quotes.toscrape.com/"

print("Web scrapping from: ", url)

spider = require'lua-spider':new()
--spider = require'lua-spider':new()
crawl = spider.assign.crawler("curl")
parse = spider.assign.parser()
xpath = spider.assign.extractor()

html = crawl(url)
doc = parse(html) --this is the gumbo document tree

posts = xpath(doc, "//table[@id=main-list-fragment]") --by default xpath returns a document tree

print(posts)

for k, v in ipairs(posts) do
    print(v)
end

-- -- Opens a file in append mode
-- file = io.open("test.html", "w+")

-- file:write(html)

-- -- closes the open file
-- file:close()

-- file_1 = io.open("test.xml", "w+")

-- file_1:write(posts)

-- -- closes the open file
-- file_1:close()


post = {}
-- for k, v in ipairs(posts) do
-- post[#post+1] = { content = xpath(v, "//span[@class=text]", "text")[1], --extract text
--                   author = xpath(v, "//small[@class=author]", "text")[1],
--                   tags = xpath(v, "//div[@class=tag]//a", "text") } --or 'href' for link
-- end

-- for k, v in ipairs(post) do
--     print(k, v["content"], v["author"])
    
--     for k2, v2 in pairs(v["tags"]) do
--         print(k2, v2)
--     end
-- end