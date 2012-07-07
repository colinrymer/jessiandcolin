ActiveAdmin.register Rsvp do
  menu priority: 1
  index do
    column "ID", sortable: :id do |rsvp|
      link_to rsvp.id, admin_rsvp_path(rsvp)
    end
    column :name
    column "Can Attend", sortable: :can_attend do |rsvp|
        rsvp.can_attend? ? "Yes" : "No"
      end
    column "Adults" do |rsvp|
      rsvp.guests.count
    end
    column "Kids" do |rsvp|
      rsvp.kids.count
    end
    column "Total" do |rsvp|
      rsvp.guests.count + rsvp.kids.count
    end
    column :shuttle
    column :created_at
    column :updated_at
    default_actions
  end

  show title: :name do |rsvp|
    attributes_table do
      row :name
      row "Can Attend" do |rsvp|
        rsvp.can_attend? ? "Yes" : "No"
      end
      row "Total" do |rsvp|
        rsvp.guests.count + rsvp.kids.count
      end
      row "Guests" do |rsvp|
        "#{rsvp.guests.count} #{("- " + rsvp.guests.map{ |g| "#{g.first_name} #{g.last_name}"}.join(", ")) unless rsvp.guests.empty?}"
      end
      row "Kids" do |rsvp|
        "#{rsvp.kids.count} #{("- " + rsvp.kids.map{ |g| "#{g.first_name} #{g.last_name}"}.join(", ")) unless rsvp.kids.empty?}"
      end
      row :shuttle
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
