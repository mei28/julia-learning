tuple_data = ("apple","banana","orange")
several_types = ("apple",10, 'a')
tuple_2d = ((1,2),(3,4))
println(tuple_data,several_types,tuple_2d)

# 1-indexに注意
println(tuple_data[1], "apple")

# こんな宣言もできる
tuple_1 = tuple(1,3,2)
println(tuple_1)

# tupleは不変だから情報の更新ができない
# できないからコメントアウト
# tuple_data[1] = "peach"

# pushもできない
# できないからコメントアウト
# push!(tuple_data,4)

# Named Tupleを使っていく
# NamedTuplesをインストール
#
# julia 1.0以降では下の書き方で直接インストールできない
# やるにはrepl modeで ] を押してPkgモードに入り，add Package名する
# Pkg.add("NamedTuples")
#
# どうしてもやりたいなら
# Using Pkgをする
# using NamedTuples
# julia1.0以降では NamedTuplesはないらしい...

# 辞書と違って不変なオブジェクトだけど，indexとして名前登録ができる
