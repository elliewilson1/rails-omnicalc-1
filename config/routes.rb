Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "home" })

  get("/square/new", { :controller => "calculator", :action => "square_new" })

  get("/square/result", { :controller => "calculator", :action => "square_result" })

  get("/square_root/new", { :controller => "calculator", :action => "square_root_new" })

  get("/square_root/result", { :controller => "calculator", :action => "square_root_result" })

  get("/payment/new", { :controller => "calculator", :action => "payment_new" })

  get("/payment/result", { :controller => "calculator", :action => "payment_result" })

  get("/random/new", { :controller => "calculator", :action => "random_new" })

  get("/random/result", { :controller => "calculator", :action => "random_result" })
end
