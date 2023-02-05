* Symex
	* Functional contributions
		* Core
			* The initial prototype was written using Hydra, Lispy, Paredit.
			* The DSL was designed.
			* The traversal-based features unique to symex were designed and implemented.
		* Language support
			* Clojure
				* Parser support for clojure(script) deref reader macro was added
				* UX was unified across clojure (i.e. clojure, clojurescript, clojurec) modes
				* Support was added for pretty printing in clojure
			* Common Lisp
				* SLY support was added for common lisp
			* Non-lisp
				* There was a suggestion to generalize Symex to work with non-lisp languages by using tree-sitter
				* An early proof-of-concept of using tree-sitter was written.
				* A more complete proof-of-concept using tree-sitter was written.
				* The tree-sitter proof of concept was turned into a full implementation.
				* The tree-sitter functionality was tested.
		* Interfaces
			* Evil
				* The modal interface was implemented in a more robust way using evil.
				* There was a suggestion for a useful keybinding recipe for interoperating with Evil
				* Symex's override of evil's : keybinding was removed
				* Support was added for evil's . (dot/repeat) operator in symex state
			* Visual aids
				* A lightweight UI feedback overlay was added for tree-sitter
				* The overlay was generalized for use in lisp
	* Support
		* Documentation
			* Basic docs were written.
			* There was a suggestion to add a table to the docs documenting keybindings.
			* A keybinding table was added to the docs.
			* There was a suggestion to add "demo gifs" / an animated guide
			* The animated guide was created.
			* A typo was fixed in the readme
		* Bug reports
			* Many early issues were reported.
			* A bug was reported in yank/paste with quoted symbols
			* A generic ecosystem/config-related issue with test modules providing features that conflict in the global namespace was reported
			* There was a bug reported in join-lines-backwards
		* Operational excellence
			* The package was named.
			* There was a suggestion to call the package Symex instead of Symex mode.
			* A code review was done and some implementation improvements were suggested.
			* CI workflows including melpazoid were added.
			* A deprecated dash dependency was updated
			* A failing melpazoid config was fixed
			* Dependency on undo-tree was removed
		* Reach out
			* An in-person meetup was hosted in SF.
			* The video from the meetup was edited and posted on youtube
