----------------------------------------------------------------------
-- Notes:
--
-- 1. In IC, BIAp and BX2p, the camera's standard movement is driven
--    by its target.  When the camera is focused on enttiies, those entities
--    are the camera's target.  When the camera is free roaming (nothing focused), 
--    the target is computed by intersecting rays with the terrain.  
--    This is the "target-interpolation" mode.
--
-- 2. The camera may also be driven in other ways.  For instance, during
--    NISes and IC NISlets, the position of the camera is driven directly
--    without any assumed targets.  This is the "eye-interpolation" mode.
--
-- 3. Different camera parameters may be interpolated differently.  
--
--	*Rate = rate to interpolate; in units-per-second
--	*Base = base to perform interpolation in (2.71828 for linear, must be >1)
--              the following graphs illustrates the effect of different bases
--
--      out |      .
--          |    .`       smaller base -> more linear; large input yields large output
--          |..``
--          +--------- in
--    
--      out |    .
--          |   .`        larger base -> less linear; large input yields very large output
--          |..`
--          +--------- in
--
--	*Threshold = threshold to start performing interpolation (defaults to 1)
--

--      Controls how fast to pan the camera / how closely does the camera follow its target.
--      Rate in meters per second.
SlideTargetRate=4
SlideTargetBase=2
--SlideTargetThreshold=1

--      Controls how fast to zoom the camera in and out
SlideDistRate=2
SlideDistBase=5
--SlideDistThreshold=1

--      Controls how fast to rotate the camera around
SlideOrbitRate=10
SlideOrbitBase=1.01
--SlideOrbitThreshold=1

--      Controls how fast to declinate the camera up and down
SlideDeclRate=4.0
SlideDeclBase=1.01
--SlideDeclThreshold=1

--	Controls the speed of the zoom with the double button press
DistRateMouse=0.50

--	Controls the speed of the zoom on the wheel
DistRateWheelZoomIn=0.7
DistRateWheelZoomOut=1.45

--	Specifies the 'dead zone' of zooming
DistMinDead = 51.0
DistMaxDead = 51.0
DeadZoneDeclinationIncr = 0.5

--	Controls how fast the mouse would drive the declination and rotation of the camera
--      Note: use negative rates if you want to reverse the rotation direction.
--4
DeclRateMouse=-5
--	up-down	
--3
OrbitRateMouse=-4
--	left-right

--	Distance ranges in meters (may be influenced by selected object size)
--6
DistMin=24
DistMax=51

--	This is as close to the terrain that the eye can get, unless focused on a
--	point that is closer to the terrain than this.
--1
DistGroundMin=4.0

--	When focused onto a point on the terrain this is the ammount (in meters)
--	that the target is raised above the terrain by.
--3
DistGroundTargetHeight=4.0

--	This is the closest that you can zoom in when you are focused at point
--	on the terrain.
--1
DistMinGround=4.0

--	Declination range : max angle you can look at a target from above/below
DeclAbove=80.000000
DeclBelow=46.000000
DeclBelowClose=46.0

--	Pan scaling : panning velocity scaling

-- Panning speed at the default zoom height.
--130
PanScaleMouseDefZ=500
--43
PanScaleKeyboardDefZ=150
--53
PanScaleScreenDefZ=150

-- Panning speed at the minimum zoom height.
--60
PanScaleMouseMinZ=60
--15
PanScaleKeyboardMinZ=15
--15
PanScaleScreenMinZ=15

-- Panning acceleration
-- To turn acceleration off, use the following values:
--     PanAccelerate=0.0
--     PanStartSpeedScalar=1.0
--1
PanAccelerate=0.0
PanStartSpeedScalar=0.5
--3
PanMaxSpeedScalar=1.0

--	General camera parameters
--	How wide the view is.
FieldOfView=90.000000
--	How close things can be to the camera (in meters, should not go below 1)
ClipNear=0.1
--	How far away we can see (in meters)
ClipFar=9999
--	How much the near plane moves in based on camera height
NearPlaneShifter=0.035


-- This limits how far out you can zoom while focused on entities
EntityMinViewAngle=0.03		--	in radians

	
DefaultDistance = 38
DefaultDeclination = 45
DefaultOrbit = 45

-- the camera model that is being used in the game
--
-- 0.0 means a pure homeworld camera, no panning
-- 1.0 means an eye panning camera, no target focus
-- 2.0 means a target panning camera.
-- 3.0 means a target panning camera, but with smoother panning height adjustment.
--
CameraMode = 3.0

-- Use this to enable/disable rotation, 1.0 means you can 0.0 means you can't
RotationEnabled = 1.0

-- Use this to enable/disable declination, 1.0 means you can 0.0 means you can't
DeclinationEnabled = 1.0

-- Use this to enable/disable auto zooming, 1.0 means you can 0.0 means you can't
ZoomLocked = 0.0

-- NISlet overrides
NISletDistMin=0.25
NISletDistMax=9999
NISletDistGroundMin=1.0
NISletDistMinGround=0.5
NISletDeclBelow=-45.000000
NISletDeclAbove=80.000000

--
--	unused
--
TrackElastic=1.000000
TrackBoundScale=1.750000

