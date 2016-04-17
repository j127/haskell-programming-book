# Chapter 1 Notes

_Referential transparency_ -- a function given the same value will return the same result

* Domain -- set of unique possible inputs
* Codomain -- set of unique possible outputs
* Range -- all possible outputs, not necessarily unique. All items in the range must appear in the codomain.

Lambda terms:

* expressions -- superset of 
* variables -- names
* abstractions -- a function with a head (a λ and parameter) and a body (an expression)

## Alpha Equivalence

λx.x is the same as λa.a.

## Beta Reduction

Remove the λ and substitute the variables to get to _beta normal form_.

	(λx.x + 1)10
	10 + 1
	11

Another example:

	(λx.x)(λy.y)
	[x := (λy.y)]
	λy.y

Left associative:

	(λx.x)(λy.y)z
	((λx.x)(λy.y))z
	[x := (λy.y)]
	(λy.y)z
	[y := z]
	z

Free variables:

	(λx.xy)z
	(λ[x := z].xy)
	zy

Multiple arguments:

	λxy.xy
	(λxy.xy)(λz.a)1
	(λx(λy).xy)(λz.a)1
	[x := (λz.a)]
	((λy).(λz.a)y)1
	[y := 1]
	(λz.a)1
	[z := 1]
	a

Combinator -- lambda term with no free variables.

## Terms to Know

* lambda
* lambda abstraction
* application
* lambda calculus
* normal order
* alpha equivelence
* beta reduction
* combinator
* referential transparency
* variable
* free variable
* domain
* codomain
* range
* expression
* abstraction
* head
* body
* parameter
