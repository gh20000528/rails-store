desc "position reset"
namespace :data do
    task :generate_pos => :environment do
        Store.all.each.with_index(1) do |store, index|
            store.update(position: index)
        end
    end
end