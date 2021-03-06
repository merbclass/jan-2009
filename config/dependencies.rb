# dependencies are generated using a strict version, don't forget to edit the dependency versions when upgrading.
merb_gems_version = "1.0.8.1"
dm_gems_version   = "0.9.10"
data_object_version = "0.9.11"

# For more information about each component, please read http://wiki.merbivore.com/faqs/merb_components
dependency "do_sqlite3", data_object_version # If using another database, replace this
dependency "data_objects", data_object_version

dependency "merb-core", merb_gems_version
dependency "merb-action-args", merb_gems_version
dependency "merb-assets", merb_gems_version  
dependency "merb-cache", merb_gems_version   
dependency "merb-helpers", merb_gems_version 
dependency "merb-mailer", merb_gems_version  
dependency "merb-slices", merb_gems_version  
dependency "merb-auth-core", merb_gems_version
dependency "merb-auth-more", merb_gems_version
dependency "merb-auth-slice-password", merb_gems_version
dependency "merb-param-protection", merb_gems_version
dependency "merb-exceptions", merb_gems_version
dependency "merb-haml", merb_gems_version
 
dependency "dm-core", dm_gems_version         
dependency "dm-aggregates", dm_gems_version   
dependency "dm-migrations", dm_gems_version   
dependency "dm-serializer", dm_gems_version   
dependency "dm-timestamps", dm_gems_version
dependency("dm-types", dm_gems_version) { require("stalkr" / "custom_dm_types") }
dependency "dm-validations", dm_gems_version  
dependency "dm-sweatshop", dm_gems_version
dependency "rdiscount", ">= 1.2"

dependency "merb_datamapper", merb_gems_version
dependency "do_mysql", data_object_version, :require_as => nil
