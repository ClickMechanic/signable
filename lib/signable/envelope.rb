module Signable
  class Envelope < Signable::Base

    column :title, presence: true
    column :fingerprint
    column :status
    column :signed_pdf
    column :redirect_url
    column :meta
    embed :documents
    embed :parties

    def remind
      self.class.client.remind self.class.entry_point, fingerprint
    end

    def update
      raise "not available"
    end

    def delete
      raise "not available"
    end

    def cancel
      self.class.client.cancel self.class.entry_point, fingerprint
    end

  end
end
