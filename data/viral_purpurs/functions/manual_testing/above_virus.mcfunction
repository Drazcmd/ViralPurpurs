# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves

# Check if the block below the player has the "virus" block tag
execute at @p if block ~ ~-1 ~ #viral_purpurs:virus run say Block below tagged viral?: YES
execute at @p unless block ~ ~-1 ~ #viral_purpurs:virus run say Block below tagged viral?: NO

# Check if the "is_virus" predicate thinks the block below the player is a "virus block"
# Note: Should always match the "virus" tag check
execute at @p positioned ~ ~-1 ~ if predicate viral_purpers:is_virus run say ...and predicate says viral?: YES
execute at @p positioned ~ ~-1 ~ unless predicate viral_purpers:is_virus run say ...and predicate says viral?: NO