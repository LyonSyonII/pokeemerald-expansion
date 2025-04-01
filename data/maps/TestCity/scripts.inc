TestCity_MapScripts::
	.byte 0


TestCity_Girl::
# 4 "data/maps/TestCity/scripts.pory"
	lockall
# 5 "data/maps/TestCity/scripts.pory"
	faceplayer
# 6 "data/maps/TestCity/scripts.pory"
	msgbox TestCity_Girl_Text_0
# 9 "data/maps/TestCity/scripts.pory"
	releaseall
	end


TestCity_Girl_Text_0:
# 7 "data/maps/TestCity/scripts.pory"
	.string "Hey! I'm a test girl!$"
