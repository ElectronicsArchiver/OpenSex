Scriptname OStimFixThirdScalingMain extends Quest

osexintegrationmain ostim

event oninit()
	ostim = OUtils.GetOStim()
	registerformodevent("ostim_scenechanged", "scenechange")
endevent

event scenechange(string eventname, string strarg, float numarg, form sender)
	actor third = ostim.getthirdactor()
	if third != none
		if ostim.isfemale(third)
			ostim.thirdscaleheight = 1.00
		else
			ostim.thirdscaleheight = 1.03
		endif
		ostim.scaletostandardheight(third)
	endif
endevent

OsexIntegrationMain property ostim auto
