Rails.application.routes.draw do

  mount PpayModel::Engine => "/ppay_model"
end
