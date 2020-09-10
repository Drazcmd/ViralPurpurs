# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves

# NOTE: VERY important to use -.001 instead of -1 below. -1 doesn't work if standing on blocks shorter
# than 1 in height. Which includes carpets, as they only raise the player by .06250 (1/16 of a block)

# Check if the block below the player has the "host" block tag
execute at @p if block ~ ~-.001 ~ #viral_purpurs:host run say Block below tagged host?: YES
execute at @p unless block ~ ~-.001 ~ #viral_purpurs:host run say Block below tagged host?: NO

# Check if the "is_host" predicate thinks the block below the player is a "host"
# Note: Should always match the "host" tag check
execute at @p positioned ~ ~-.001 ~ if predicate viral_purpers:is_host run say ...and predicate says host?: YES
execute at @p positioned ~ ~-.001 ~ unless predicate viral_purpers:is_host run say ...and predicate says host?: NO

# loops itself - clear by schedule clear <name>
schedule function viral_purpurs:debugging/above_host 1s