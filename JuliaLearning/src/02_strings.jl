str1 = "string"
println(str1)
str2 = """String"""
println(str2)
str3 = """ この記号  " " を使いたいときは3つの方を使う"""
println(str3)

println("'a'はchr型として扱われる")
println(typeof('a'))

num = 10
println("この値は$num")
println("$num + $num = $(num+num)")

println("文字列結合")
println(string("私","は","犬です"))

println(string("私","は","犬です",num))


println("文字結合は*を"*"使えばできるらしい")

chr1 = 'a'
chr2 = 'b'
println(string(chr1,chr2))
println(typeof(string(chr1,chr2)))
println(chr1*chr2)
println(typeof(chr1*chr2))
