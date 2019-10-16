# The same Brief Example as found in section 1.3 of
# glpk-4.44/doc/glpk.pdf.
#
# maximize
#   z = 10 * x1 + 6 * x2 + 4 * x3
#
# subject to
#   p:      x1 +     x2 +     x3 <= 100
#   q: 10 * x1 + 4 * x2 + 5 * x3 <= 600
#   r:  2 * x1 + 2 * x2 + 6 * x3 <= 300
#
# where all variables are non-negative
#   x1 >= 0, x2 >= 0, x3 >= 0
#
m = Cbc::Model.new
x1, x2, x3 = m.int_var_array(3, 0..Cbc::INF)

m.maximize(10 * x1 + 6 * x2 + 4 * x3)

m.enforce(x1 + x2 + x3 <= 100)
m.enforce(10 * x1 + 4 * x2 + 5 * x3 <= 600)
m.enforce(2 * x1 + 2 * x2 + 6* x3 <= 300)

p = m.to_problem

p.solve

if ! p.proven_infeasible?
  puts "x1 = #{p.value_of(x1)}"
  puts "x2 = #{p.value_of(x2)}"
  puts "x3 = #{p.value_of(x3)}"
end