module Signable
  class Webhook < Signable::Base

    column :id
    column :type, presence: true
    column :url, presence: true
  end
end
