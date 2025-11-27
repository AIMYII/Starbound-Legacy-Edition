function init()
    set.on = false
end

function active(fireMode, shiftHeld)
    if fireMode == "alt" then
        self.on = not self.off
    
    if self.on then
      animator.setGroupHidden("visor", false)
      animator.playSound("switchOn")
    else
      animator.setGroupHidden("visor", true)
      animator.playSound("switchOff")
    end
  end
end