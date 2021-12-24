simvis_attributes =
{
   persistent_bodies = 0,

	selection_volume		= 1,
	selection_ground		= 1,

	vis_scale_min			= 0.93,	
	vis_scale_max			= 0.93,

	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 3,
	shadow_scale			= 0.025,
	
	distance_game_mesh_lod = 40,	
	occludee	= 1,
}
