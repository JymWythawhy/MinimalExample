# MinimalExample
A minimal example of a problem I encountered in Godot.

The tiles have two event functions on them- the first, on_Tile_input_event(ev), is changes the tile graphic from filled if empty, and empty if filled on left click of the mouse on the tile. The second, on_Tile_mouse_enter(), changes the graphic from filled if empty, and empty if filled when the mouse passes over the tile and the left mouse button is already down.

Both of these functions work, unless a tile is clicked and then the mouse is dragged (still clicked) from there onto other tiles. In that case, the click is registered on the original tile, but the other tiles do not see the on_Tile_mouse_enter event. It never triggers for the other tiles until the mouse button is let up and then clicked outside of any tile.
