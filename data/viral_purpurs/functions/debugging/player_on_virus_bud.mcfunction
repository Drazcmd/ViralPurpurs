# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves

# NOTE: VERY important to use -.001 instead of -1 below. -1 doesn't work if standing on blocks shorter
# than 1 in height. Which includes carpets, as they only raise the player by .06250 (1/16 of a block)

# Check if the block below the player has the "bud" block tag
execute at @p if block ~ ~-.001 ~ #viral_purpurs:bud run say Block below tagged viral bud?: YES
execute at @p unless block ~ ~-.001 ~ #viral_purpurs:bud run say Block below tagged viral bud?: NO

# Check if the "is_virus_bud" predicate thinks the block below the player is a "virus bud"
# Note: does NOT always match above (only matches if the block two below is a "virus block")
execute at @p positioned ~ ~-.001 ~ if predicate viral_purpers:is_virus_bud run say ...and predicate says viral bud?: YES
execute at @p positioned ~ ~-.001 ~ unless predicate viral_purpers:is_virus_bud run say ...and predicate says viral bud?: NO


# loops itself - clear by schedule clear <name>
schedule function viral_purpurs:debugging/player_on_virus_bud 1s