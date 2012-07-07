ActiveAdmin.register Rsvp do
  index do
    column "ID", :sortable => :id do |rsvp|
      link_to rsvp.id, admin_rsvp_path(rsvp)
    end
    column :name
    column :can_attend
    column :shuttle
    column :notes
    column :created_at
    column :updated_at
    default_actions
  end
end
