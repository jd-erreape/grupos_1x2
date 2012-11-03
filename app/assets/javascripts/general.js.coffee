$ ->

  #---------- Fancybox ------------
  $("a.fancybox").fancybox()
  $("a.fancybox.iframe.statistics").fancybox
    height: "67%%"
  #---------- End Fancybox ------------

#---------- Seleccion de menu --------

window.set_main_menu_selection = (controller_name) ->
  $(".nav ul.select").removeClass('current')
  $(".nav ul.#{controller_name}").addClass('current')

#---------- Seleccion de menu --------
