ActiveAdmin.register Guest do
  index do
    column "ID", sortable: :id do |guest|
      link_to guest.id, admin_guest_path(guest)
    end
    column :first_name
    column :last_name
    column :created_at
    column :updated_at
    default_actions
  end
end
