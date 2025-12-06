// obj_map_controller Draw Event
draw_set_color(c_white);

// loop through node connections
for (var i = 0; i < array_length(map_nodes)-1; i++)
{
    var n1 = map_nodes[i];
    var n2 = map_nodes[i+1];

    // SAFETY FIX — skip missing nodes
    if (!instance_exists(n1)) continue;
    if (!instance_exists(n2)) continue;

    // only draw if both nodes are unlocked or cleared
    if (n1.node_state > 0 && n2.node_state > 0)
    {
        draw_line(n1.x, n1.y, n2.x, n2.y);
    }
}