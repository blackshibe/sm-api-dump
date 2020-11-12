---@class sm
---@field ai sm_ai
---@field log sm_log
---@field color sm_color
---@field visualization table
---@field body sm_body
---@field character table
---@field cell table
---@field areaTrigger sm_areaTrigger
---@field container sm_container
---@field noise sm_noise
---@field melee table
---@field effect table
---@field event table
---@field player sm_player
---@field exists fun(arg1:Vec3|Color|Uuid|Quat):boolean
---@field projectile sm_projectile
---@field game sm_game
---@field shape sm_shape
---@field challenge sm_challenge
---@field gui sm_gui
---@field raycastResult table
---@field interactable sm_interactable
---@field json sm_json
---@field pathfinder sm_pathfinder
---@field unit sm_unit
---@field storage sm_storage
---@field debugDraw sm_debugDraw
---@field item sm_item
---@field localPlayer table
---@field joint sm_joint
---@field network table
---@field tool sm_tool
---@field world sm_world
---@field render table
---@field uuid sm_uuid
---@field audio sm_audio
---@field particle table
---@field portal sm_portal
---@field construction sm_construction
---@field harvestable sm_harvestable
---@field pathNode table
---@field physics sm_physics
---@field camera sm_camera
---@field quat sm_quat
---@field vec3 sm_vec3
---@field lift table
---@field creation table
---@field util table
---@field isServerMode fun()
 
---@class sm_gui
---@field widget table
---@field createWidget fun()
---@field chatMessage fun()
---@field interface function
 
---@class sm_shape
---@field getXAxis fun()
---@field getUp fun()
---@field getShapeDescription fun(arg1:Uuid):string
---@field getYAxis fun()
---@field getNeighbours fun()
---@field getMass fun()
---@field getMaterialId fun()
---@field getIsHarvest fun(arg1:Uuid):boolean
---@field getColor fun()
---@field getRight fun()
---@field getLocalPosition fun()
---@field getAt fun()
---@field getShapeUuid fun()
---@field getShapeTypeColor fun(arg1:Uuid):Color
---@field getShapeTitle fun(arg1:Uuid):string
---@field getMaterial fun()
---@field getBuoyancy fun()
---@field getIsStackable fun(arg1:Uuid):boolean
---@field getBody fun()
---@field getId fun()
---@field getInteractable fun()
---@field getPipedNeighbours fun()
---@field getShapeIcon fun()
---@field getBoundingBox fun()
---@field getWorldPosition fun()
---@field getWorldRotation fun()
---@field getVelocity fun()
---@field getZAxis fun()
---@field shapeExists fun()
 
---@class sm_vec3
---@field closestAxis fun(arg1:Vec3):Vec3
---@field getX fun(arg1:Vec3):number
---@field length2 fun(arg1:Vec3):number
---@field normalize fun(arg1:Vec3):Vec3
---@field zero fun()
---@field getZ fun(arg1:Vec3):number
---@field length fun(arg1:Vec3):number
---@field one fun()
---@field getY fun(arg1:Vec3):number
 
---@class sm_camera
---@field state function
 
---@class sm_harvestable
---@field destroy fun()
---@field getMaterial fun()
---@field getRotation fun()
---@field getName fun()
---@field getMaterialId fun()
---@field getType fun()
---@field getPosition fun()
---@field getId fun()
---@field getColor fun()
 
---@class sm_unit
---@field getAllUnits fun()
 
---@class sm_quat
---@field getW fun(arg1:Quat):number
---@field getX fun(arg1:Quat):number
---@field round90 fun(arg1:Quat):Quat
---@field getZ fun(arg1:Quat):number
---@field identity fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg2:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg3:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg4:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg5:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg6:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg7:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg8:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg9:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg10:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg11:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg12:Vec3|table|number|boolean|string|Color|Uuid|Quat):Quat
---@field getY fun(arg1:Quat):number
 
---@class sm_noise
---@field simplexNoise1d fun(arg1:number):number
 
---@class sm_challenge
---@field hasStarted fun()
---@field getSaveData fun()
---@field getCompletionTime fun(arg1:Uuid):number
---@field resolveContentPath fun(arg1:string):string
 
---@class sm_color
---@field getA fun(arg1:Color):number
---@field getR fun(arg1:Color):number
---@field getG fun(arg1:Color):number
---@field getB fun(arg1:Color):number
 
---@class sm_construction
---@field constants function
 
---@class sm_portal
---@field destroy fun()
---@field popWorldPortalHook fun()
---@field createPortal fun(arg1:Vec3):Portal
 
---@class sm_debugDraw
---@field removeArrow fun()
---@field removeSphere fun()
 
---@class sm_physics
---@field getGroundMaterial fun(arg1:Vec3):string
---@field filter function
---@field getGravity fun()
---@field setGravity fun()
---@field types function
 
---@class sm_interactable
---@field getColorHighlight fun()
---@field getBearings fun()
---@field actions function
---@field connectionType function
---@field types function
---@field getSingleParent fun()
---@field getId fun()
---@field getPublicData fun()
---@field getShape fun()
---@field getPistons fun()
---@field getBody fun()
---@field isActive fun()
---@field getConnectionOutputType fun()
---@field getPower fun()
---@field getMaxParentCount fun()
---@field getColorNormal fun()
---@field getType fun()
---@field getMaxChildCount fun()
---@field steering function
---@field getJoints fun()
---@field getConnectionInputType fun()
 
---@class sm_audio
---@field soundList function
 
---@class sm_json
---@field parseJsonString fun()
---@field open fun()
---@field writeJsonString fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat):string
 
---@class sm_log
---@field warning fun()
---@field info fun()
---@field error fun()
 
---@class sm_world
---@field getCurrentWorld fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg2:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg3:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg4:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg5:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg6:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg7:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg8:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg9:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg10:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg11:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg12:Vec3|table|number|boolean|string|Color|Uuid|Quat):World
---@field getId fun()
---@field isIndoor fun()
 
---@class sm_areaTrigger
---@field destroy fun()
---@field filter function
 
---@class sm_item
---@field getShapeDefaultColor fun(arg1:Uuid):Color
---@field isBlock fun(arg1:Uuid):boolean
---@field isPart fun(arg1:Uuid):boolean
---@field getQualityLevel fun(arg1:Uuid):number
---@field getInteractablesUuidsOfType fun(arg1:string):table
---@field isTool fun(arg1:Uuid):boolean
---@field getPlantable fun()
---@field getShapeSize fun()
---@field getEdible fun()
---@field getCharacterShape fun()
---@field myFunction fun(arg1:string):boolean
---@field getShapeOffset fun(arg1:Uuid):Vec3
---@field isJoint fun(arg1:Uuid):boolean
---@field getPlantableUuids fun()
 
---@class sm_uuid
---@field getNil fun()
 
---@class sm_storage
---@field load fun()
 
---@class sm_ai
---@field getClosestVisibleCrop fun()
---@field getRandomCreationPosition fun()
---@field getClosestVisiblePlayerCharacter fun()
 
---@class sm_joint
---@field getAppliedImpulse fun()
---@field getAngle fun()
---@field getId fun()
---@field getShapeB fun()
---@field getLength fun()
---@field getShapeA fun()
---@field getColor fun()
---@field getType fun()
---@field getAngularVelocity fun()
---@field isReversed fun()
---@field types function
 
---@class sm_projectile
---@field getProjectileMass fun(arg1:string):number
 
---@class sm_tool
---@field interactState function
 
---@class sm_body
---@field getShapes fun()
---@field getCreationBodies fun()
---@field isPaintable fun()
---@field isConvertibleToDynamic fun()
---@field isDynamic fun()
---@field isOnLift fun()
---@field isDestructable fun()
---@field getWorldPosition fun()
---@field isBuildable fun()
---@field isStatic fun()
---@field getMass fun()
---@field getId fun()
---@field getWorldRotation fun()
---@field getAngularVelocity fun()
---@field isUsable fun()
---@field getAllBodies fun()
---@field getVelocity fun()
---@field isErasable fun()
---@field getCreationId fun()
---@field getCreationShapes fun()
---@field getCenterOfMassPosition fun()
---@field isConnectable fun()
---@field isLiftable fun()
---@field getCreationsFromBodies fun(arg1:table):table
 
---@class sm_game
---@field getEnableUpgradeCost fun()
---@field getServerTick fun()
---@field getEnableAmmoConsumption fun()
---@field getEnableFuelConsumption fun()
---@field getCurrentTick fun()
---@field getLimitedInventory fun()
---@field getTimeOfDay fun()
 
---@class sm_player
---@field getAllPlayers fun()
---@field removeLift fun()
 
---@class sm_pathfinder
---@field conditionProperty function
 
---@class sm_container
---@field getSize fun()
---@field endTransaction fun()
---@field abortTransaction fun()
---@field isEmpty fun()
---@field getId fun()
---@field beginTransaction fun()
---@field getMaxStackSize fun()
---@field getFirstItem fun()
---@field itemUuid fun()
---@field quantity fun()
