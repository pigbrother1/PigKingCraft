--@name pkc_worldinit
--@description 世界初始化
--@auther 大猪猪，redpig
--@date 2016-10-23

local TheNet = GLOBAL.TheNet
local IsServer = TheNet:GetIsServer()

--世界初始化
--@大猪猪 10-31
AddPrefabPostInit("world", function(inst)
	if inst then
		GLOBAL.pkc_setNetvar(inst,{
			GROUP_BIGPIG_POS_x = {"net_float", 0},
			GROUP_BIGPIG_POS_z = {"net_float", 0},
			GROUP_REDPIG_POS_x = {"net_float", 0},
			GROUP_REDPIG_POS_z = {"net_float", 0},
			GROUP_LONGPIG_POS_x = {"net_float", 0},
			GROUP_LONGPIG_POS_z = {"net_float", 0},
			GROUP_CUIPIG_POS_x = {"net_float", 0},
			GROUP_CUIPIG_POS_z = {"net_float", 0},
		})
		if IsServer then
			inst:AddComponent("pkc_baseinfo")	--记录阵营的位置
		end
	end
end)