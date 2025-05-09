Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "home" })

  get("/square/new", { :controller => "calculator", :action => "square_new" })

  get("/square/results", { :controller => "calculator", :action => "square_result" })

  get("/square_root/new", { :controller => "calculator", :action => "square_root_new" })

  get("/square_root/results", { :controller => "calculator", :action => "square_root_result" })

  get("/payment/new", { :controller => "calculator", :action => "payment_new" })

  get("/payment/results", { :controller => "calculator", :action => "payment_result" })

  get("/random/new", { :controller => "calculator", :action => "random_new" })

  get("/random/results", { :controller => "calculator", :action => "random_result" })
end
