class RollDiceController < ApplicationController
  def start
    render({ template: "roll_templates/main" })
  end
  def execute
    @num_dice = params.fetch("d1").to_i
    @dice_sides = params.fetch("d2").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@dice_sides)
      @rolls.push(die)
    end
  
    render({template: "roll_templates/rolls"})
  end
end
