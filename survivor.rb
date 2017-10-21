class Survivor
  WOUNDS_TO_DEATH = 2

  def initialize(name)
    @wounds = 0
    @name=name
  end

  def identify
    @name
  end

  def wounded?
    @wounds > 0
  end

  def be_hurt
    @wounds += 1
  end

  def dead?
    @wounds >= WOUNDS_TO_DEATH
  end

  def ready?
    true
  end
end