# WARNING: First two checks work executed directly, but still having trouble running the function / predicate themselves
# TODO: Make this return false correctly when on a carpet above a host
# Currently we seem to be ignoring carpets inbetween in this check (as in, says true when standing on carpet that's above a host)


# Check if the block below the player has the "host" block tag
execute at @p if block ~ ~-1 ~ #viral_purpurs:host run say Block below tagged host?: YES
execute at @p unless block ~ ~-1 ~ #viral_purpurs:host run say Block below tagged host?: NO

# Check if the "is_host" predicate thinks the block below the player is a "host"
# Note: Should always match the "host" tag check
execute at @p positioned ~ ~-1 ~ if predicate viral_purpers:is_host run say ...and predicate says host?: YES
execute at @p positioned ~ ~-1 ~ unless predicate viral_purpers:is_host run say ...and predicate says host?: NO