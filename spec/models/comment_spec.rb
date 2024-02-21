require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#moderate_content' do
    it 'accepts comment if content is considered correct by moderation API' do
      comment = Comment.create(content: 'Article de grande qualité')

      user = User.create!(email: 'ray@gmail.com', password: '123456', nickname: 'Ray')
      user.save
      comment.user = user

      post= Post.new(
        url: "www.site/internet/du/pays.com",
        img: "https://img.20mn.fr/KJcG4M-8Q-SQZ_xm2gf8ZCk/830x532_in-this-photo-illustration-a-whats-app-logo-seen-displayed-on-a-smartphone-with-stock-market-percentages-in-the-background-omar-marques-sopa-images-sopaimages-1725046-credit-sopa-images-sipa-2309191749",
        title: "Whatsapp sur Ipad",
        content: "Du côté des utilisateurs, on commençait presque à ne plus y croire. Une version de WhatsApp destinée aux iPad est (enfin) en cours de développement et devrait bientôt voir le jour, rapporte 01net, selon des informations révélées par WABetaInfo.

        L’application est en réalité dans les tuyaux chez Meta depuis l’été 2021. Mais c’est la première fois qu’une version bêta est disponible pour les testeurs. Pour se la procurer, il faut cependant passer par TestFlight, une application permettant aux propriétaires d’iPhone et iPad de tester des versions préliminaires d’applications.",
        user: user
      )
      post.save
      comment.post = post
      comment.save
      p comment


      expect(comment.is_accepted).to be true
    end

    it 'moderates comment if content is not considered correct by moderation API' do
      comment = Comment.create(content: 'Article de merde')

      user = User.create!(email: 'ray@gmail.com', password: '123456', nickname: 'Ray')
      user.save
      comment.user = user

      post= Post.new(
        url: "www.site/internet/du/pays.com",
        img: "https://img.20mn.fr/KJcG4M-8Q-SQZ_xm2gf8ZCk/830x532_in-this-photo-illustration-a-whats-app-logo-seen-displayed-on-a-smartphone-with-stock-market-percentages-in-the-background-omar-marques-sopa-images-sopaimages-1725046-credit-sopa-images-sipa-2309191749",
        title: "Whatsapp sur Ipad",
        content: "Du côté des utilisateurs, on commençait presque à ne plus y croire. Une version de WhatsApp destinée aux iPad est (enfin) en cours de développement et devrait bientôt voir le jour, rapporte 01net, selon des informations révélées par WABetaInfo.

        L’application est en réalité dans les tuyaux chez Meta depuis l’été 2021. Mais c’est la première fois qu’une version bêta est disponible pour les testeurs. Pour se la procurer, il faut cependant passer par TestFlight, une application permettant aux propriétaires d’iPhone et iPad de tester des versions préliminaires d’applications.",
        user: user
      )
      post.save
      comment.post = post
      comment.save
      p comment


      expect(comment.save).to be false
    end
  end
end
