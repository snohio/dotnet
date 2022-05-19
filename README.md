# dotnet

## Description

This cookbook was built to just play with and show how you can compare a value of a Node Attribute (in this case one created by the recipe and not automatic) and an attribute defined in the Policyfile (or kitchen.yml to replicate a node attribute from the Chef server).

## Next steps?

Figure out how to silently install the update.

## More to Come

Again, just using this to play but I wanted something simple to reference down the road.

The other thing in the cookbook that I wanted to reference is how to put a registry key into a variable. That took a little bit of searching and whatnot. I think the big takeaway for me is that preface ruby code with `::` and then execute the command. And while I am at it - based on a discussion I recently had, the power here of Chef is that Ruby is platform agnostic to some degree. You can make ruby calls that do the needful regardless of OS.
