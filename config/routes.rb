Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/insert_user_record", { :controller => "users", :action => "create" })
  get("/update_user/:user_id", { :controller => "users", :action => "edit" })
  

  get("/photos", { :controller => "photos", :action => "index" })
  get("/delete_photo/:photo_id", { :controller => "photos", :action => "delete" })
  get("/insert_photo_record/", { :controller => "photos", :action => "create" })
  get("/update_photo/:photo_id", { :controller => "photos", :action => "edit" })


  get("/users/:username", { :controller => "users", :action => "show" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })

  get("/insert_comment_record", { :controller => "comments", :action => "create" })

end
