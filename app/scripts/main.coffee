emailLink = 'mailto:jarrett@thestyl.us'

$('.js-email-btn').attr 'href', emailLink
$('.js-freelance-btn').attr 'href', "#{emailLink}?body=Tell me about your project!"

$('#js-user-btn').on 'click', ->
  $('.hero').toggleClass 'minify'
