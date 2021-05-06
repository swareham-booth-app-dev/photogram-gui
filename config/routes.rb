Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/insert_user_record", { :controller => "users", :action => "create" })
  get("/update_user/:user_id", { :controller => "users", :action => "edit" })
  

  get("/photos", { :controller => "photos", :action => "index" })


  get("/users/:username", { :controller => "users", :action => "show" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })

end
