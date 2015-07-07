class RecipeMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.send_recipe.subject
  #
  def send_recipe
    @greeting = "Hi"
    
     @person=Person.all

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.spam.subject
  #
  def spam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
