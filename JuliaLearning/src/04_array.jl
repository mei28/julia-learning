# 普通に配列を宣言
fruits = ["apple","orange","banana"]
println(fruits)
# 別のものが混ざっても大丈夫
fruits_num = ["apple","orange",1]
println(fruits_num)

# 1-indexに注意
println(fruits[2])

# 配列に対してpush, popもできる
push!(fruits,"peach")
println(fruits)
pop!(fruits)
println(fruits)

# 参照して更新
fruits[1] = "apple2"
println(fruits)

# 多次元配列
fruits_2d = [["apple","orange","banana"],["apple2","orange2","banana2","peach2"]]
println(fruits_2d)

# 乱数生成
rand_4x3 = rand(4,3)
println(rand_4x3)

# 配列の初期化
println(zeros(4))

println(zeros(3,4))

# 型の指定
println(zeros(Int8,3,4))

zeros_array = zeros(Int8, 2,4)

println(ones(5))
print(ones(2,3))

# {0,1},{true,false}以外で埋めたいときはfillを使う
println(fill(10,(3,2))) 

tmp = ones(2,4)
# 配列の次元数を取得
println(ndims(tmp))
# 配列のindexを取得
# indicesが使えない?
# println(indices(tmp))
println(size(tmp))
#　全てのよう素数を返す
println(length(tmp))

# 要素へのindexをiterableな形で取得する
#

for iter in eachindex(tmp)
    println(iter, "=>", tmp[iter])
end

# non-zeroな要素数を返してくれる関数
# これもない?
# println(coutnz(tmp))


# 配列のreshape
ones_id = ones(15)
ones_id = reshape(ones_id,(3,5))
println(ndims(ones_id))
println(size(ones_id))

# 片方の次元だけ
ones_id = reshape(ones_id,1,:)
println(size(ones_id))
println(size(vec(ones_id)))

# vertical方向に結合
a = [1 2 3 4 5]
b = [6 7 8 9 10; 11 12 13 14 15]
c = vcat(a,b)
println(c)

# horizontalな方向に結合
a = [1;2;3;4;5]
b = [6;7;8;9;10]
c = hcat(a,b)
println(c)

# 配列の演算
# 要素ごとにやりたかったら.をつける
a = [1, 2, 3, 4, 5]
println(a .+ 1)
println(a .- 1)
println(a .* 2)
println(a ./ 2)

# @. を先につけるでもいい
println(@. a + 1)
println(@. a - 1)
println(@. a * 2)
println(@. a / 2)

# 累積演算をする
println(accumulate(+, [1,2,3]))

println(accumulate(+, [1,2,3], init=100))

println(accumulate(min, [1,0,2,-1,3,45]))


