function say_name(name)
  println("$name")
end

say_name("mei")
# ワンライナーでかく
say_name_oneline(name) = println("$name")
say_name_oneline("mei_one")

# 複数行
say_name_lines(name) = begin
    output = name * ": 複数行で書くよ"
    println(output)
end

say_name_lines("mei")

# lambda式

say_name_lambda = name -> println("$name da")
say_name_lambda("mae")

# juliaでは最終で返す値がかえる return はなくてもいい

function sample(x,y)
    x + y
end

println(sample(3,2))

# operatorを利用したやり方

println(+(1, 2, 3, 4))
println(*(1, 2, 3, 4))
