Rails.application.routes.draw do
  # get("/", {:controller=>"main",:action=>"calculate"})

  get("/", {:controller=>"main",:action=>"squarehome"})
  get("/square/new", {:controller=>"main",:action=>"squarehome"})
  get("/square/results",{:controller=>"main",:action=>"squarecalc"})

  get("/square_root/new", {:controller=>"main",:action=>"squareroothome"})
  get("/square_root/results", {:controller=>"main",:action=>"squarerootresults"})
  
  get("/payment/new", {:controller=>"main",:action=>"paymenthome"})
  get("/payment/results", {:controller=>"main",:action=>"paymentresults"})

  get("/random/new", {:controller=>"main",:action=>"randomhome"})
  get("/random/results", {:controller=>"main",:action=>"randomresults"})
end
