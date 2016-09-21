class NinjaVillage
  attr_accessor :leader
  attr_reader :village_name
  attr_reader :members
  def initialize(village_name="木葉", leader="火影三代")
    @village_name = village_name
    @leader = leader
    @members = []
  end

  def introduction
    "這是#{village_name}忍者村，我們的村長是#{leader}，#{secret}"
  end

  def add_member(user)
    @members << user
  end

  private
  def secret
    "通常個大國對於忍者村的控制力都非常的低"
  end
end



class Uchiha < NinjaVillage
  attr_accessor :age
  attr_reader :name

  def initialize(name, age, village_name, leader)
    @name = name
    @age = age
    @village_name = village_name
    @leader = leader
  end


  def skill
    # age是一個方法 = self.age 由attr_accessor :age 所定義
    if age > 10
      "大火球"
    else
      "射飛鏢"
    end
  end

  def sharingan
    "血輪眼"
  end

  def tragedy
    "鼬殺了所有家族的人"
  end
end


module BloodEey
  def sharingan
    "血輪眼"
  end

  def introduction
    "這是血輪眼的module"
  end
end

class Hatake < NinjaVillage
  include BloodEey
  attr_accessor :age
  attr_reader :name

  def initialize(name, age, village_name, leader)
    @name = name
    @age = age
    @village_name = village_name
    @leader = leader
  end

  def skill
    "拷貝忍術"
  end
end


v1 = NinjaVillage.new()

p1 = Uchiha.new("佐助" , 10 , "木葉" ,"火影三代")
p2 = Uchiha.new("鼬" , 15 , "木葉" ,"火影三代")

p3 = Hatake.new("卡卡西" , 25 , "木葉" ,"火影三代")

v1.add_member(p1)
v1.add_member(p2)
v1.add_member(p3)

v1.members.each do |member|
  member.skill
end

module Sanchong
  class AndyLua
    def handson
      "HI 我是三重劉德華"
    end
  end
end
module Wanhua
  class AndyLua
    def handson
      "HI 我是萬華劉德華"
    end
  end
end

