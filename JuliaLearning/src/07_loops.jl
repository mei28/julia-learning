# whileの中身はiを参照できないからglobalをつける
i = 0
while i < 10
  global i += 1
  println(i)
end

# iterableならなんでもいい
fruits = ["apple","banana","orange"]

i = 1
while i<= length(fruits)
    println(fruits[i])
    global i+=1
end

# for

for i = 1:10
  println(i)
end

for i in fruits
    println(i)
end


fruits = ("apple","banana","orange")
for i in fruits
    println(i)
end

fruits = Dict("apple"=>1,"banana"=>2,"orange"=>3)
# かっこをつけないとエラー
for (k,v) in fruits
    println(k,v)
end

apple = "apple"
for i in apple
    println(i)
end

fruits = Set(["apple","banana","orange"])
for i in fruits
    println(i)
end

## 少し書き方が特殊なループ

## 二重forループがあっても一行でかけてしまう．
for i = 1:2, j=2:3
    println((i,j))
end

for i =1:5, j=2:20
    println((i,j))
end

# 同時にループを回したいときはzip関数をつかう
for ( i,j ) in zip(1:3,2:4)
    println(i,j)
end

# 内包表記
# 内包表記を使って，行列がすぐ作れる

mat = [i+j for i=1:10,j=1:10 ]
println(mat)
println(size(mat))


