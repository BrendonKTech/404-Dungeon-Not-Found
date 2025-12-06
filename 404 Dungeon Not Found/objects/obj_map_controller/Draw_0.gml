draw_set_color(c_white);

// loop through all map nodes
for (var i = 0; i < array_length(global.map_nodes); i++)
{
    var n = global.map_nodes[i];
    if (!instance_exists(n)) continue;

    // --- Draw forward connection (connects_to) ---
    if (n.connects_to != noone)
    {
        var to = n.connects_to;

        if (instance_exists(to))
        {
            // only draw if both nodes are unlocked / active
            if (n.node_state > 0 && to.node_state > 0)
            {
                draw_line(n.x, n.y, to.x, to.y);
            }
        }
    }

    // --- Draw backward connection (connects_from) ---
    if (n.connects_from != noone)
    {
        var from = n.connects_from;

        if (instance_exists(from))
        {
            if (n.node_state > 0 && from.node_state > 0)
            {
                draw_line(n.x, n.y, from.x, from.y);
            }
        }
    }
}