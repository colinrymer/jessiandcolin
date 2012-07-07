ActiveAdmin.register Kid do
  index do
    column "ID", sortable: :id do |kid|
      link_to kid.id, admin_kid_path(kid)
    end
    column :first_name
    column :last_name
    column :created_at
    column :updated_at
    default_actions
  end
end
