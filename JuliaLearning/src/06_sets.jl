# 宣言方法がちょっとだけ違う
fruits = Set(["apple","banana","orange"])
println(fruits)

# 型を明示的に指定できる
fruits = Set{String}(["apple","banana","orange"])
println(fruits)

# 空集合
fruits_empty = Set()

# 要素の追加

fruits = Set{String}()
push!(fruits,"apple")
println(fruits)

# 型がおかしいからエラー
# push!(fruits,1)
# println(fruits)

# 存在があるかどうかをチェック

fruits = Set(["apple","orange"])
println(in("apple",fruits))
println(in("banana",fruits))

# 集合の演算

fruits = Set(["apple","banana","orange"])
another_fruits = Set(["peach","pineapple"])
drink = Set(["coffee","milk","cocoa"])
number = Set([1,2,3,4])

# Union
println(union(fruits,drink))

println(union(fruits,number))

# intersection
println(intersect(fruits, another_fruits) )

# difference
println(setdiff(fruits,another_fruits))
println(setdiff(another_fruits,fruits))
