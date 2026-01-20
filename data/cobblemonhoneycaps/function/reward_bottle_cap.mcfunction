# Give the bottle cap reward
# Randomly select one of 6 bottle cap types
execute store result score @s bottle_cap_type run random value 0..5

execute if score @s bottle_cap_type matches 0 run give @s obc:bottle_cap_hp 1
execute if score @s bottle_cap_type matches 1 run give @s obc:bottle_cap_attack 1
execute if score @s bottle_cap_type matches 2 run give @s obc:bottle_cap_defence 1
execute if score @s bottle_cap_type matches 4 run give @s obc:bottle_cap_special_attack 1
execute if score @s bottle_cap_type matches 3 run give @s obc:bottle_cap_special_defence 1
execute if score @s bottle_cap_type matches 5 run give @s obc:bottle_cap_speed 1

tellraw @s {"text":"You found a bottle cap in the honey!","color":"yellow"}
playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 0.5 1.0

# Cleanup
scoreboard players reset @s bottle_cap_type
