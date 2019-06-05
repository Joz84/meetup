ActiveAdmin.register Booking do
  config.sort_order = 'slot_asc'
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
    selectable_column
    column :speaker
    column (:slot) {|booking| Booking.slots.key(booking.slot)}
    column :user
    actions
  end

  show do |p|
    attributes_table do
      row :speaker
      row (:slot) {|p| Booking.slots.key(p.slot)}
      row :user
    end
  end

end
