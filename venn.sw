@doc Venn [out=doc/venn.md]
# Venn--A Declarative Diagram Editor #

There are many GUI-based diagram editors in the wild. From the wonderful,
but still click-heavy, Visio to the distinctly clunky and annoying Dia. The
options for writing diagrams in a declarative, text-based manner (not
unlike the relationship between Pandoc Markdown or ReStructured
Text and Microsoft Word) are few.

The one to receive the most press if you ask about the intrawebs is
Graphviz. Graphviz is a wonderful piece of software for graph
visualization. The trick is, it visualizes graphs in the mathematical
sense--in no sense was it intended to be used to build ER diagrams or such.

The intent, then, is to build a declarative diagramming tool. The main
features we are after are:

* Fully declarative. No clicking or dragging to build the diagram, you
  state the structure of the diagram and you get what you are after.
* Auto-layout. If no layout hints are provided, something sensible should
  be generated. This is where you really feel that Graphviz is not meant
  for this sort of work. The defaults are perfectly reasonable, provided
  that you are visualizing a large number of interconnected nodes, not a
  pretty picture of the class layout.
* Straightforward layout tuning. Whether the needs are highly specific or
  the user is being picky (I tend to be picky--I want it to look good), it
  should be simple to tune the layout, even using a mixture of manual and
  automatic layout.
* Extensibility. The basic model should be similar to Graphviz, in that it
  consists of nodes that are connected by edges, the appearance of which
  can be calibrated. However, most diagram types tend to style certain
  elements the same. So, there should be a method in Venn to create graph
  types that can be re-used.
* Human-readability. The format parsed by Venn should be readable on its
  own and the user should be able to make some sense of what the diagram is
  without even needing to render it.

## Language Reference ##

### Concepts ###

The first thing we will look at here is how to define a diagram. The core
concepts to Venn are:

1. A node is the central item in the diagram. It represents an entity
(whatever that means in context). Its shape and other visual attributes are
malleable.
2. An edge connects nodes. Again, its appearance and even its visibility
are variable.
3. Layers are groupings of nodes with a Z-index defined. Edges do not live
on layers and can connect nodes between layers.

Everything else is simply styling over these concepts.

### Attributes ###

### Definition Syntax ###

### Reusable Diagram Types ###

Now that we have reviewed the basic entities and how they can be styled, we
need to formulate a method to specify these attributes in a reusable way.

## Internal Model ##

## Renderer ##

## Parser ##

## References ##

// vim: set tw=75 ai: 
