# dotnet cookbook for Chef 17+

## Description

This cookbook was built to just play with and show how you can compare a value of a Node Attribute (in this case one created by the recipe and not automatic) and an attribute defined in the Policyfile (or kitchen.yml to replicate a node attribute from the Chef server).

In version 0.2.x I added the update component, so this is now a functioning **.net Framework** upgrade cookbook controlled by the attributes in the policyfile or the Chef Server (node attributes)

## Next steps?

Figure out how to silently install the update.

## More to Come

Again, just using this to play but I wanted something simple to reference down the road.

The other thing in the cookbook that I wanted to reference is how to put a registry key into a variable. That took a little bit of searching and whatnot. I think the big takeaway for me is that preface ruby code with `::` and then execute the command. And while I am at it - based on a discussion I recently had, the power here of Chef is that Ruby is platform agnostic to some degree. You can make ruby calls that do the needful regardless of OS.

Interesting Tidbit #3, this was the first time I played with a rebooting cookbook and how that works with Test Kitchen. I needed to put an additional timer in my `kitchen.yml` file because I put a 1 min wait in the `reboot` resource.
