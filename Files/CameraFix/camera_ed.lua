--	Interpolation in camera motion and camera snapping
--
--	*Rate = rate to interpolate
--	*Base = base to perform interpolation in (2.71828 for linear, must be >1)
--	*Threshold = threshold to start performing interpolation
--
SlideTargetRate=2
SlideTargetBase=2
--SlideTargetThreshold=1

SlideDistRate=1
SlideDistBase=5
--SlideDistThreshold=1

SlideOrbitRate=10
SlideOrbitBase=1.01
--SlideOrbitThreshold=1

SlideDeclRate=10
SlideDeclBase=1.01
--SlideDeclThreshold=1

--	Controls the speed of the zoom with the double button press
DistRateMouse=0.50

--	Controls the speed of the zoom on the wheel
DistRateWheelZoomIn=0.70
DistRateWheelZoomOut=1.45

--	Mouse rotation speed : scales the mouse motion to perform the camera rotation
DeclRateMouse=-4
--	up-down	
OrbitRateMouse=-3
--	left-right

--	Distance ranges in meters (may be influenced by selected object size)
DistMin=0.25
DistMax=9999

--	This is as close to the terrain that the eye can get, unless focused on a
--	point that is closer to the terrain than this.
DistGroundMin=1.0

--	When focused onto a point on the terrain this is the ammount (in meters)
--	that the target is raised above the terrain by.
DistGroundTargetHeight=1.0

--	This is the closest that you can zoom in when you are focused at point
--	on the terrain.
DistMinGround=1.0

--	Declination range : max angle you can look at a target from above/below
DeclAbove=80.000000
DeclBelow=-45.000000

--	Pan scaling : panning velocity scaling

-- Panning speed at the default zoom height.
PanScaleMouseDefZ=100
PanScaleKeyboardDefZ=33
PanScaleScreenDefZ=43

-- Panning speed at the minimum zoom height.
PanScaleMouseMinZ=50
PanScaleKeyboardMinZ=10
PanScaleScreenMinZ=10

--	General camera parameters
FieldOfView=90.000000
--	How wide the view is.
ClipNear=0.1
--	How close things can be to the camera (in meters, should not go below 1)
ClipFar=9999
--	How far away we can see (in meters)

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
CameraMode = 2.0

-- Use this to enable/disable rotation, 1.0 means you can 0.0 means you can't
RotationEnabled = 1.0

-- Use this to enable/disable declination, 1.0 means you can 0.0 means you can't
DeclinationEnabled = 1.0

-- Use this to enable/disable auto zooming, 1.0 means you can 0.0 means you can't
ZoomLocked = 0

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

