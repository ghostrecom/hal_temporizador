
local function DrawTexture(textureStreamed,textureName,x, y, width, height,rotation,r, g, b, a, p11)
	if not HasStreamedTextureDictLoaded(textureStreamed) then
	   RequestStreamedTextureDict(textureStreamed, false);
	else
		DrawSprite(textureStreamed, textureName, x, y, width, height, rotation, r, g, b, a, p11);
	end
end

local function drawtext(text, s1, s2, x, y, r, g, b, font)
    SetTextScale(s1, s2)
    SetTextColor(r, g, b, 255)--r,g,b,a
    SetTextCentre(true)--true,false
    SetTextDropshadow(1, 0, 0, 0, 200)--distance,r,g,b,a
    SetTextFontForCurrentCommand(font)
    DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)

	
end

function DecimalsToMinutes(dec)
    local ms = tonumber(dec)
    local min = math.floor((ms / 60))
    local ms = (ms % 60)
    if min < 10 then
        min = "0"..tostring(min)
    end
    if ms < 10 then
        ms = "0"..tostring(ms)
    end
    return min..":"..ms
end 


local toggleEstado = false

exports("run", function(estado,tiempo)
    toggleEstado = estado
    local textoTiempo 

	Citizen.CreateThread(function()

		while tiempo > 0 and toggleEstado  do
			tiempo = tiempo - 1
            textoTiempo = tostring(DecimalsToMinutes(tiempo))
			Wait(1000)
           
		end
	end)
	while tiempo >0 and toggleEstado do
		Wait(0)
		if tiempo >= 1 then
            
            color = {r =255,g=255,b=255}
            if tiempo < 60 then  color = {r =255,g=0,b=0} end
            
            DrawTexture("feeds", "toast_bg", 0.5, 0.065,  0.05, 0.032, 0.0, 0,0,0,170, true)
			drawtext(textoTiempo, 0.40, 0.40, 0.5, 0.05, color.r,color.g,color.b, 25)
		end
	end
    toggleEstado = false
    return false
end)


