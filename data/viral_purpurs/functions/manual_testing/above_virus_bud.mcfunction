# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves

# Check if the block below the player has the "bud" block tag
execute at @p if block ~ ~-1 ~ #viral_purpurs:bud run say Block below tagged viral bud?: YES
execute at @p unless block ~ ~-1 ~ #viral_purpurs:bud run say Block below tagged viral bud?: NO

# Check if the "is_virus_bud" predicate thinks the block below the player is a "virus bud"
# Note: does NOT always match above (only matches if the block two below is a "virus block")
execute at @p positioned ~ ~-1 ~ if predicate viral_purpers:is_virus_bud run say ...and Viral predicate says viral bud?: YES
execute at @p positioned ~ ~-1 ~ unless predicate viral_purpers:is_virus_bud run say ...and predicate says viral bud?: NO