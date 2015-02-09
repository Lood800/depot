namespace :db do 
	desc "Prints the migrated version"
	task :schema_migration => :environment do
		puts ActiveRecord::Base.connection.select_values(
			'Select version from schema_migration order by version')
	end	
end