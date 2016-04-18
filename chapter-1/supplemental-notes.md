# Notes on the Supplemental Reading to Chapter 1

## A Tutorial Introduction to the Lambda Calculus

[A Tutorial Introduction to the Lambda Calculus](http://www.inf.fu-berlin.de/lehre/WS03/alpi/lambda.pdf) [PDF]

### Expressions

     <expression> := <name> | <function> | <application>
	   <function> := λ <name>.<expression>
	<application> := <expression><expression>

### Substitutions

* `Ι` is a synonym for the identity function: `λx.x`
* `ΙΙ ≡ (λx.x)(λy.y)`

### Other Things to Remember

* free and bound variables
* left-to-right evaluation

Watch out for variable names:

`(λx.(λy.xy))y` can be rewritten as `(λx.(λt.xt))y` to make things clearer. It then reduces to `(λt.yt)`.

## Arithmetic

`λs.(λz.z)` is the same as `λsz.z`.

One is `suc(zero)`, two is `suc(suc(zero))`.

Numbers:

	0 ≡ λsz.z
	1 ≡ λsz.s(z)
	2 ≡ λsz.s(s(z))
	3 ≡ λsz.s(s(s(z)))

Successor function:

	S ≡ λwyx.y(wyx)
	
Applied to zero:

	S0 ≡ (λwyx.y(wyx))(λsz.z)

2+3:

	2S3 ≡ (λsz.s(sz))(λwyx.y(wyx))(λuv.u(u(uv)))

Multiplication:

	(λxyz.x(yz))
	
2*2:

	(λxyz.x(yz))22
	
	reduces to:
	
	(λz.2(2z))
	
True and false:

	T ≡ λxy.x
	F ≡ λxy.y

Logical operations:

	AND:
	∧ ≡ λxy.xy(λuv.v) ≡ λxy.xyF

	OR:
	∨ ≡ λxy.x(λuv.u)y ≡ λxy.xTy

	Negation:
	¬ ≡ λx.x(λuv.v)(λab.a) ≡ λx.xFT

Negation applied to `true`:

	¬T ≡ λx.x(λuv.v)(λab.a)(λcd.c)
	
	Reduces to:
	TFT ≡ (λcd.c)(λuv.v)(λab.a) = (λuv.v) ≡ F
	
Conditional test:

True if a number is zero, otherwise false:

	Z ≡ λx.xF¬F
