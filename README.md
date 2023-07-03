# CustomCrafting
A **prototype** for custom crafting in minecraft

![Video showcase](https://i.imgur.com/3RfCyQs.mp4 "Video Showcase")

## How it works

When you run the `plag_cc:place` function, it places a crafting bench with a bunch of interaction and item display entities. You can see them if you enable hitboxes:

![Hitboxes made visible](https://i.imgur.com/9zozJC7.png)

There are 10 interaction entities: One for the bench itself, and 9 for the individual crafting slots. They are linked to each other through scoreboard scores, to make it easier to know which interaction entities belong together.

When the player interacts with (or hits) them, an advancement is triggered that checks through the UUID of the interacting player which entity was interacted with and runs the respective interaction.

- **interact**ing with the slots will drop whatever item is in them already and adding one item of whatever the interacting player is holding in their hand.
- **hit**ting the crafting bench attempts to craft the item

Due to it checking for and summoning items individually, you can always add NBT checks for the inputs or outputs, allowing for full NBT crafting support.

## This is a prototype

That means that the provided code is lacking some things it would (probably, depending on your usecase) need to be production ready, most notably:

- a dynamic / survival friendly way to place and remove the custom crafting bench
- a better way to check for the various recipes, as it currently is just a list of recipes to check through (in `plag_cc:hit/craft`).


### Ideas on how to improve the crafting performance

Currently the pack just runs through a list of all recipes and checks all of them using individual selectors and NBT checks. This works fine for a very low number of entities and recipes, but is not going to scale well.

So here are some ideas and concepts on how one could reduce the amount of NBT checks needed. Some of these could be combined. They vary wildly in their complexity but also their potential performance gain:

- make an initial check on how many slots are air and group recipes based on that (e.g. only check recipes with 4 air slots if there are 4 emtpy slots).
- make a search tree based on slots contents. could be just "is slot empty or not" or could be "how long is the name of the item in the first slot" level of precise. The later would likely result in a LOT of folders, but also a very low amount of NBT checks needed, especially if there are a LOT of recipes to work with.
- Construct the crafting table NBT into a single object somewhere in the data storage and compare to a single hardcoded NBT dataset in the recipe check (by overwriting the constructed object and saving the success into a score. If it failed, the data is the same. the `plag_cc:hit/check_helper` function uses this concept to figure out which entity was interacted with using the UUID array of the player).
- use NBT checks (also optimized, e.g. through a search tree of item id length) when placing the item, not when crafting, and use scores to store what item is in what slot. Then it's just a case of comparing scores (unless you want NBT input), which is a LOT more performant. It might also enable "shapeless" crafting recipes more easily than other options, as a combined score of the ingredients might be fairly unique and only require some minimal additional checks.
- Stop traversing / checking NBT once you find the correct recipe. It is already set up to do this in a basic way, but should probably continue to do this or expand on it, e.g. using the new `/return` command.



### Ideas on what else could be improved / added / changed

All of these of course depend on your usecase, but here are some ideas for inspiration of what you could do with this.

- Change the size and positioning of the slot interaction entities to include the outlines, making it easier to hit
- change it so hitting the slots either
  - drops the item or 
  - also attempts to craft
- allow for more than Count:1 item stacks to be placed in the slots, enabling mass crafting. Probably want to add a little text display to show item stack size for the various slots.

## LICENSE

This repository uses the GNU GPL v3, meaning you may distribute, change, adjust, use, etc this sourcecode to your liking, as long as you provide proper credit to the source material (this repository and its author) and note relevant changes.

Or in other words:

You can use this as the basis for your own datapack, use it in a map (even comercially) and do whatever else you want with it, as long as you provide proper credit to **Plagiatus** and this repository.