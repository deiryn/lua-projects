tool = script.Parent

function onActivation()

	local silly = math.random(1, 3)
	local sound = nil
  
	if silly == 1 then
		sound = script.Parent.Sounds.funny1
	elseif silly == 2 then
		sound = script.Parent.Sounds.funny2
	else
		sound = script.Parent.Sounds.funny3
	end
  
	sound:Play()
end

tool.Activated:Connect(onActivation)
