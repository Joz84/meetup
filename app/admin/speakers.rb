 # t.string "first_name"
 #    t.string "last_name"
 #    t.text "description"
 #    t.string "company"
 #    t.string "post"

ActiveAdmin.register Speaker do

  actions :index, :new, :create, :update, :edit, :show
  permit_params :first_name,
                :last_name,
                :company,
                :post,
                :description

  index do
    selectable_column
    column :email
    column :phone
    column :first_name
    column :last_name
    column :company
    column :post
    column :description
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
      row :description
    end

    panel "Bookings" do
      table_for(p.bookings.order(slot: :asc)) do
        column ("Slot") {|t| Booking.slots.key(t.slot)}
        column ("User Name") {|t| link_to t.user.name, admin_user_path(t.user.id) }
        column ("User Post") {|t| t.user.post }
        column ("User Company") {|t| t.user.company}
      end
    end

  end

  filter :first_name
  filter :company

end
