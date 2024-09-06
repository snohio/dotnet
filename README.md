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

## Updated More Information

> This cookbook is meant to be used in select instances due to the nature of where the .net install is store and also the touchy nature that it requires specific attributes in your policyfile or somewhere else along the way. Depending on the platform (Windows 2019, Windows 10, etc.) the version of dotnet is different. If you are not careful and specifically knowing what version applies and adjust the attribute in the policyfile, or elsewhere, this could result in REBOOT HELL, which is super fun.
>
> **IF I HAVE NOT MENTIONED IT ENOUGH** - This is an experimental cookbook and useful for reference, but **IN NO WAY EVER** *should it be used for production workloads*.  EOM.
