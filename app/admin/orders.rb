ActiveAdmin.register Order do
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
permit_params :tracking_number, :order_status, :product_cost, :subtotal,
              :sales_tax, :total_price, :customer_id, :product_id, :product_name,
              product_orders_attributes: [:product_id, :order_id, :_destroy]

form do |f|
  f.semantic_errors *f.object.errors.keys

  f.inputs "Order" do
    f.input :customer_id
    f.input :tracking_number
    f.input :order_status
    f.input :total_price
    f.input :subtotal
    f.input :sales_tax
    f.has_many :product_orders, allow_destroy: true do |n_f|
      n_f.input :product_name
    end
  end

  f.actions
end
end

