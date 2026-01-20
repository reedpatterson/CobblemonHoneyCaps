# This triggers when player right-clicks with honey bottle
# Remove the honey bottle and give back an empty bottle
clear @s minecraft:honey_bottle 1
give @s minecraft:glass_bottle 1

# Generate random number between 0-99
execute store result score @s honey_rng run random value 0..99

# 10% chance to get a bottle cap
execute if score @s honey_rng matches 0..9 run function cobblemonhoneycaps:reward_bottle_cap

# Reset RNG score
scoreboard players reset @s honey_rng

# Reset the advancement so it can trigger again
advancement revoke @s only cobblemonhoneycaps:honey_use
