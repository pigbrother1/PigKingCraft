--@name pkc_playerinit
--@description 玩家初始化
--@auther 大猪猪，redpig
--@date 2016-10-23
local TheNet = GLOBAL.TheNet
local IsServer = TheNet:GetIsServer()

--玩家初始化
--@大猪猪 10-31
AddPlayerPostInit(function(inst)
	if inst then
		GLOBAL.pkc_setNetvar(inst,{
			hasChoosen = {"net_shortint", 0},
		})
		if IsServer then
			--添加玩家阵营组件
			inst:AddComponent("pkc_group")
		end
	end
end)