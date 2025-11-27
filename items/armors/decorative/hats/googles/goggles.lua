function init()
    set.on = false
end

function active(fireMode, shiftHeld)
    if self.fireMode == "alt" and self.lastFireMode ~= "alt" then
        self.active = not self.active
    
    if self.on then
      animator.setGroupHidden("visor", false)
      animator.playSound("switchOn")
    else
      animator.setGroupHidden("visor", true)
      animator.playSound("switchOff")
    end
  end
end
