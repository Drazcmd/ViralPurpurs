# Note - forcing player instead of sender since scheudled functions execute as the server

# NOTE: VERY important to use -.001 instead of -1 below. -1 doesn't work if standing on blocks shorter
# than 1 in height. Which includes carpets, as they only raise the player by .06250 (1/16 of a block)

# Check if the block below the player has the "flower" block tag
execute at @p if block ~ ~-.001 ~ #viral_purpurs:flower run say Block below tagged viral flower?: YES
execute at @p unless block ~ ~-.001 ~ #viral_purpurs:flower run say Block below tagged viral flower?: NO

# Check if the "is_virus_flower" predicate thinks the block below the player is a "virus flower"
execute at @p positioned ~ ~-.001 ~ if predicate viral_purpurs:block/is_virus_flower run say ...and predicate says viral flower?: YES
execute at @p positioned ~ ~-.001 ~ unless predicate viral_purpurs:block/is_virus_flower run say ...and predicate says viral flower?: NO


# loops itself - clear by schedule clear <name>
schedule function viral_purpurs:debugging/player_on_virus_flower 1s