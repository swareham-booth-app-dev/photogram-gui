Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/photos", { :controller => "photos", :action => "index" })

  get("/users/:username", { :controller => "users", :action => "show" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })

end
