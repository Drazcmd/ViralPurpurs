# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves

# NOTE: VERY important to use -.001 instead of -1 below. -1 doesn't work if standing on blocks shorter
# than 1 in height. Which includes carpets, as they only raise the player by .06250 (1/16 of a block)

# Check if the block below the player has the "virus" block tag
execute at @p if block ~ ~-.001 ~ #viral_purpurs:virus run say Block below tagged viral?: YES
execute at @p unless block ~ ~-.001 ~ #viral_purpurs:virus run say Block below tagged viral?: NO

# Check if the "is_virus" predicate thinks the block below the player is a "virus block"
# Note: Should always match the "virus" tag check
execute at @p positioned ~ ~-.001 ~ if predicate viral_purpurs:block/is_virus run say ...and predicate says viral?: YES
execute at @p positioned ~ ~-.001 ~ unless predicate viral_purpurs:block/is_virus run say ...and predicate says viral?: NO

# loops itself - clear by schedule clear <name>
schedule function viral_purpurs:debugging/player_on_virus 1s