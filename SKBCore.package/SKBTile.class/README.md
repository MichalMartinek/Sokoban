This class represents simple tile in game

Variable tileType contains #SKBWall, #SKBAir or #SKBCrateSlot and determines if is tile passable

Variable entity contains information on current entity located on specific tile. (Returns nil if empty or #SKBPlayer or #SKBCrate)
Variable position contains information about tile position within a level.