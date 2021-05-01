using JuMP
using Clp

# 空のモデルを作る

c = Model(with_optimizer(Clp.Optimizer))

# 変数の定義

@variable(m, x1 >=0)
@variable(m, x2 >=0)
