fruits = begin
  apple = "apple"
  orange = "orange"
  [apple,orange]
end

println(fruits)

z = (apple = "apple"; orange="orange";[apple,orange])
println(z)

function if_example(x,y)
    if x<y
        println("x<y: $x < $y")
    elseif x>y
        println("x>y: $x > $y")
    else
        println("x==y: $x==$y")
    end 
end

if_example(3,2)
if_example(3,3)
if_example(3,5)


N = 15
if (N%3==0) & (N%5==0)
    println("FizzBuzz")
end

# 三項演算子

x = (10>5) ? 10 : 5
println(x)


## & と&&の違い
# この２つはどちらも、「２つの条件がともに真の時、trueを返します」が、挙動が違います。
# まずは挙動を確認してみたいと思います。
# 挙動を確認するために適当な関数を使います。
# 以下は、果物の個数を出力した後にtrueとfalseをそれぞれ返す関数です。
apple_true(x) = (println("apple => $x"); true)
orange_false(x) = (println("orange => $x"); false)

# &から挙動を確認します。
# 両方の評価を行う
apple_true(1) & orange_false(2)

# 左がダメならすぐやめる
apple_true(1) && orange_false(2)
orange_false(2) && apple_true(1)  

