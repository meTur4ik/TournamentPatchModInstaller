simvis_attributes =
{
	melee_size 									= 2,
	melee_block_ratio						= 80,
	melee_unsynced_damage_ratio = 7,

	selection_volume		= 1,
	selection_ground		= 1,
	
	-- Shadow Types:
	-- 0 = None
	-- 1 = blob (rotated by light dir)
	-- 2 = blob (rotated by object dir)
	-- 3 = shadow map
	-- 4 = stencil shadow volume
	shadow_type			= 3,
	shadow_scale			= 0.08,
	
	occluder	= 1,
}

simvis_attributes_strings =
{
	shadow_texture			= "Shadows/shadow_dir_blob-dot.tga"
}

