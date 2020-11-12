 
---@class class fun(infer):table
---@field shape sm_shape
---@field interactable sm_interactable
---@field maxParentCount number 
---@field maxChildCount number
---@field connectionInput string
---@field connectionOutput string
---@field colorNormal Color
---@field colorHighlight Color

 
---@class sm_gui
---@field createWidget fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg2:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg3:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg4:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg5:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg6:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg7:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg8:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg9:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg10:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg11:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg12:Vec3|table|number|boolean|string|Color|Uuid|Quat)
---@field chatMessage fun(arg1:string)
---@field widget table
 
---@class sm_camera
 
---@class sm_quat
---@field getW fun(arg1:Quat):number
---@field getX fun(arg1:Quat):number
---@field round90 fun(arg1:Quat):Quat
---@field getZ fun(arg1:Quat):number
---@field identity fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg2:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg3:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg4:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg5:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg6:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg7:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg8:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg9:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg10:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg11:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg12:Vec3|table|number|boolean|string|Color|Uuid|Quat):Quat
---@field getY fun(arg1:Quat):number
 
---@class sm_interactable
---@field getColorHighlight fun(arg1:any)
---@field getJoints fun(arg1:any)
---@field getSingleParent fun(arg1:any)
---@field getBearings fun(arg1:any)
---@field getShape fun(arg1:any)
---@field getPublicData fun(arg1:any)
---@field getBody fun(arg1:any)
---@field getPistons fun(arg1:any)
---@field getConnectionOutputType fun(arg1:any)
---@field getPower fun(arg1:any)
---@field getId fun(arg1:any)
---@field getColorNormal fun(arg1:any)
---@field getType fun(arg1:any)
---@field getMaxChildCount fun(arg1:any)
---@field getMaxParentCount fun(arg1:any)
---@field isActive fun(arg1:any)
---@field getConnectionInputType fun(arg1:any)
 
---@class sm_audio
 
---@class sm_json
---@field parseJsonString fun(arg1:any)
---@field open fun(arg1:any)
---@field writeJsonString fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat):string
 
---@class sm
---@field ai sm_ai
---@field log sm_log
---@field color sm_color
---@field body sm_body
---@field areaTrigger sm_areaTrigger
---@field container sm_container
---@field noise sm_noise
---@field physics sm_physics
---@field player sm_player
---@field exists fun(arg1:Vec3|Color|Uuid|Quat):boolean
---@field projectile sm_projectile
---@field game sm_game
---@field shape sm_shape
---@field challenge sm_challenge
---@field interactable sm_interactable
---@field harvestable sm_harvestable
---@field pathfinder sm_pathfinder
---@field unit sm_unit
---@field debugDraw sm_debugDraw
---@field item sm_item
---@field joint sm_joint
---@field tool sm_tool
---@field world sm_world
---@field uuid sm_uuid
---@field audio sm_audio
---@field construction sm_construction
---@field gui sm_gui
---@field camera sm_camera
---@field quat sm_quat
---@field vec3 sm_vec3
---@field portal sm_portal
---@field storage sm_storage
---@field json sm_json
---@field isServerMode sm_isServerMode
 
---@class sm_world
---@field getCurrentWorld fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg2:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg3:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg4:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg5:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg6:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg7:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg8:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg9:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg10:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg11:Vec3|table|number|boolean|string|Color|Uuid|Quat, arg12:Vec3|table|number|boolean|string|Color|Uuid|Quat):World
---@field getId fun(arg1:any)
---@field isIndoor fun(arg1:any)
 
---@class sm_areaTrigger
---@field destroy fun(arg1:any)
 
---@class sm_item
---@field getShapeDefaultColor fun(arg1:Uuid):Color
---@field isBlock fun(arg1:Uuid):boolean
---@field isPart fun(arg1:Uuid):boolean
---@field getQualityLevel fun(arg1:Uuid):number
---@field getInteractablesUuidsOfType fun(arg1:string):table
---@field isTool fun(arg1:Uuid):boolean
---@field getPlantable fun(arg1:Uuid)
---@field getShapeSize fun(arg1:any)
---@field getEdible fun(arg1:Uuid)
---@field getCharacterShape fun(arg1:Uuid)
---@field myFunction fun(arg1:string):boolean
---@field getShapeOffset fun(arg1:Uuid):Vec3
---@field isJoint fun(arg1:Uuid):boolean
---@field getPlantableUuids table
 
---@class sm_ai
---@field getClosestVisibleCrop fun(arg1:any)
---@field getRandomCreationPosition fun(arg1:any)
---@field getClosestVisiblePlayerCharacter fun(arg1:any)
 
---@class sm_joint
---@field getAppliedImpulse fun(arg1:any)
---@field getAngle fun(arg1:any)
---@field getId fun(arg1:any)
---@field getShapeB fun(arg1:any)
---@field getLength fun(arg1:any)
---@field getColor fun(arg1:any)
---@field getType fun(arg1:any)
---@field getAngularVelocity fun(arg1:any)
---@field isReversed fun(arg1:any)
---@field getShapeA fun(arg1:any)
 
---@class sm_pathfinder
 
---@class sm_game
---@field getEnableUpgradeCost table
---@field getServerTick table
---@field getEnableAmmoConsumption table
---@field getEnableFuelConsumption table
---@field getCurrentTick table
---@field getLimitedInventory table
---@field getTimeOfDay table
 
---@class sm_uuid
---@field getNil table
 
---@class sm_shape
---@field getXAxis fun(arg1:any)
---@field getUp fun(arg1:any)
---@field getShapeDescription fun(arg1:Uuid):string
---@field getYAxis fun(arg1:any)
---@field getNeighbours fun(arg1:any)
---@field getMass fun(arg1:any)
---@field getMaterialId fun(arg1:any)
---@field getIsHarvest fun(arg1:Uuid):boolean
---@field getColor fun(arg1:any)
---@field getRight fun(arg1:any)
---@field getLocalPosition fun(arg1:any)
---@field getAt fun(arg1:any)
---@field getShapeUuid fun(arg1:any)
---@field getShapeTypeColor fun(arg1:Uuid):Color
---@field getShapeTitle fun(arg1:Uuid):string
---@field getMaterial fun(arg1:any)
---@field getBuoyancy fun(arg1:any)
---@field getIsStackable fun(arg1:Uuid):boolean
---@field getBody fun(arg1:any)
---@field getId fun(arg1:any)
---@field getInteractable fun(arg1:any)
---@field getPipedNeighbours fun(arg1:any)
---@field getShapeIcon fun(arg1:Uuid)
---@field getBoundingBox fun(arg1:any)
---@field getWorldPosition fun(arg1:any)
---@field getWorldRotation fun(arg1:any)
---@field getVelocity fun(arg1:any)
---@field getZAxis fun(arg1:any)
---@field shapeExists fun(arg1:any)
 
---@class sm_noise
---@field simplexNoise1d fun(arg1:number):number
 
---@class sm_challenge
---@field hasStarted table
---@field getSaveData fun(arg1:Uuid)
---@field getCompletionTime fun(arg1:Uuid):number
---@field resolveContentPath fun(arg1:string):string
 
---@class sm_color
---@field getA fun(arg1:Color):number
---@field getR fun(arg1:Color):number
---@field getG fun(arg1:Color):number
---@field getB fun(arg1:Color):number
 
---@class sm_isServerMode
---@field paramsMin number
---@field paramsExact number
---@field paramsMax number
 
---@class sm_debugDraw
---@field removeArrow fun(arg1:string)
---@field removeSphere fun(arg1:string)
 
---@class sm_physics
---@field getGroundMaterial fun(arg1:Vec3):string
---@field setGravity fun(arg1:number)
---@field getGravity table
 
---@class sm_log
---@field warning fun(arg1:string)
---@field info fun(arg1:string)
---@field error fun(arg1:string)
 
---@class sm_vec3
---@field closestAxis fun(arg1:Vec3):Vec3
---@field getX fun(arg1:Vec3):number
---@field length2 fun(arg1:Vec3):number
---@field normalize fun(arg1:Vec3):Vec3
---@field zero table
---@field getZ fun(arg1:Vec3):number
---@field length fun(arg1:Vec3):number
---@field one table
---@field getY fun(arg1:Vec3):number
 
---@class sm_storage
---@field load fun(arg1:Vec3|table|number|boolean|string|Color|Uuid|Quat)
 
---@class sm_portal
---@field destroy fun(arg1:any)
---@field popWorldPortalHook fun(arg1:string)
---@field createPortal fun(arg1:Vec3):Portal
 
---@class sm_tool
 
---@class sm_projectile
---@field getProjectileMass fun(arg1:string):number
 
---@class sm_harvestable
---@field destroy fun(arg1:any)
---@field getMaterial fun(arg1:any)
---@field getRotation fun(arg1:any)
---@field getName fun(arg1:any)
---@field getMaterialId fun(arg1:any)
---@field getType fun(arg1:any)
---@field getPosition fun(arg1:any)
---@field getId fun(arg1:any)
---@field getColor fun(arg1:any)
 
---@class sm_body
---@field getShapes fun(arg1:any)
---@field getCreationBodies fun(arg1:any)
---@field isPaintable fun(arg1:any)
---@field isConvertibleToDynamic fun(arg1:any)
---@field isDynamic fun(arg1:any)
---@field isOnLift fun(arg1:any)
---@field isDestructable fun(arg1:any)
---@field getWorldPosition fun(arg1:any)
---@field isBuildable fun(arg1:any)
---@field isStatic fun(arg1:any)
---@field getMass fun(arg1:any)
---@field getId fun(arg1:any)
---@field getWorldRotation fun(arg1:any)
---@field getAngularVelocity fun(arg1:any)
---@field isUsable fun(arg1:any)
---@field getAllBodies table
---@field getVelocity fun(arg1:any)
---@field isErasable fun(arg1:any)
---@field getCreationId fun(arg1:any)
---@field getCreationShapes fun(arg1:any)
---@field getCenterOfMassPosition fun(arg1:any)
---@field isConnectable fun(arg1:any)
---@field isLiftable fun(arg1:any)
---@field getCreationsFromBodies fun(arg1:table):table
 
---@class sm_unit
---@field getAllUnits table
 
---@class sm_construction
 
---@class sm_player
---@field getAllPlayers table
---@field removeLift fun(arg1:any)
 
---@class sm_container
---@field getSize fun(arg1:any)
---@field endTransaction table
---@field abortTransaction table
---@field isEmpty fun(arg1:any)
---@field getId fun(arg1:any)
---@field beginTransaction table
---@field getMaxStackSize fun(arg1:any)
---@field getFirstItem fun(arg1:any)
---@field itemUuid fun(arg1:any)
---@field quantity fun(arg1:any)
