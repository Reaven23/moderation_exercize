module Moderable
  extend ActiveSupport::Concern
  require 'rest-client'

  included do
    before_validation :moderate_content
  end



  def moderate_content
    content = self.content
    return if content.blank?

    response = RestClient.get(
      'https://moderation.logora.fr/predict',
      params: { text: content, language: 'fr-FR' },
      headers: { accept: 'application/json' }
    )


    result = JSON.parse(response.body)
    self.is_accepted = true if result["prediction"]["0"] <= 0.1669644832611084


    # throw(:abort) unless is_accepted == true
    errors.add(:content, "Comment content is not accepted.") unless is_accepted
  end

end
