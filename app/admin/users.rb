ActiveAdmin.register User do
  actions :index, :new, :create, :update, :edit, :show
  permit_params :admin,
                :email,
                :password

  index do
    selectable_column
    column :email
    column :phone
    column :first_name
    column :last_name
    column :company
    column :post
    actions
  end

  show do |p|
    attributes_table do
      row :email
      row :phone
      row :first_name
      row :last_name
      row :company
      row :post
      row (:motivated) {|user| User.motivations.key(user.motivated) }
      row (:interested) {|user| User.interests.key(user.interested) }
      row (:informed) {|user| User.informations.key(user.informed) }
    end

    panel "Bookings" do
      table_for(p.bookings.order(slot: :asc)) do
        column ("Slot") {|t| Booking.slots.key(t.slot)}
        column ("Speaker Name") {|t| link_to t.speaker.name, admin_speaker_path(t.speaker.id) }
      end
    end

  end

  filter :email
  filter :admin

end
