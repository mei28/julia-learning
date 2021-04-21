# 定義の仕方がpython (:) と違って =>　を つかう

fruits = Dict("apple"=> 1, "banana"=> 2, "orange"=>3)
println(fruits)

# アクセスはキー
println(fruits["apple"])

fruits["mango"] = 4
println(fruits)

# 削除
pop!(fruits,"banana")
println(fruits)

# 削除part2
delete!(fruits,"apple")
println(fruits)

# 順序という概念がないから数値インデックスでアクセスはできない
# println(fruits[1])

# 辞書型の操作
println(haskey(fruits, "apple"))

# get(dict, key, default)
# ないときはdefault
println(get(fruits,"apple",42))
println(get(fruits,"mango",42))

# キーたちを取得したい時
println(keys(fruits))

# valueたちを取得したいとき
println(values(fruits))

# 複数の辞書もマージできるよ
a = Dict("apple"=>1,"banana"=>2)
b = Dict("banana"=>1,"peach"=>2)

# 後から来た方は上書きされる

println(merge(a,b))
println(merge(b,a))
