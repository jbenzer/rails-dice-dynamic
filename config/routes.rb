Rails.application.routes.draw do
  get("/", { controller: "roll_dice", action: "start"})

  get("/dice/:d1/:d2", {controller: "roll_dice", action: "execute"}) 

end
