* Symex
	* Platform/core
		* The platform on which Symex is implemented
	* Dev tools
		* A lint and docstring-checking package for the Emacs ecosystem.
	* Structural editing primitives
		* Lisp
			* A library providing many of the primitives for transforming expressions that are used in the structural editing DSL, and ensuring that manual textual edits preserve tree structure.
			* A library that initially provided many of the transformation primitives for the structural editing DSL, and which currently is used only superficially.
			* A library that provides an Evil "text object" for a symex, which is used to compute the bounds of the expression in Symex's tidy/auto-indent function.
			* A library that provides the ability to operate on expression delimiters, which is used in the "change delimiter" and "splice" operations.
		* Non-Lisp
			* A library providing the primitives for moving across and transforming expressions in non-Lisp languages. These primitives are used in the structural editing DSL to extend Symex's support to many non-Lisp languages.
			* A library providing access to the syntax tree for non-Lisp languages.
	* UI libraries
		* A menu-driven interface that served as the initial prototype of the modal UI but is now largely deprecated.
		* A modal interface library that is used to implement the primary modal UI used today.
