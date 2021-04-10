-- CONFIG YOUR WATERMARK HERE --

name = "PUT YOUR NAME HERE"             --What you want the watermark to say

offset = {x = 0.005, y = 0.001}         --Starts from top left

rgb = {r = 255, g = 255, b =255}        --Colour of your text

alpha = 200                             --Transparency of your watermark

scale = 0.5                             --Size of your watermark text

font = 1                                --Fonts = 0 - 5

rainbow = true                          --Over rides the colour options     true/false



-- MAIN CODE STARTS HERE --

Citizen.CreateThread(function()
    while true do 
        Wait(1)

        if rainbow then 
            rgb = RGBRainbow(1)
        end

        SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
        SetTextFont(font)
        SetTextScale(scale, scale)
        SetTextWarp(0.0, 1.0)
        SetTextCentre(false)
        SetTextDropshadow(2, 2, 0, 0, 0)
        SetTextEdge(1, 0, 0, 0, 205)
        SetTextEntry('STRING')
        AddTextComponentString(name)
        DrawText(offset.x, offset.y)
    end
end)



-- RAINBOW MODE CODE --

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result 
end