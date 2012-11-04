#*********************** FUNCIONES VARIAS ***********************

#---------- Seleccion de menu --------
window.set_main_menu_selection = (controller_name) ->
  $(".nav ul.select").removeClass('current')
  $(".nav ul.#{controller_name}").addClass('current')
#---------- End Seleccion de menu --------

#---------- Ocultar el flash --------
hide_element_by_id = (id) ->
  $(id).fadeOut(1000)

window.hide_flash = ->
  setTimeout (-> hide_element_by_id '#message-green'), 3000
  #setTimeout (-> hide_element_by_id '#message-yellow'), 3000
  #setTimeout (-> hide_element_by_id '#message-red'), 3000
  setTimeout (-> hide_element_by_id '#message-blue'), 3000
#---------- End Ocultar el flash --------

#*********************** END FUNCIONES VARIAS ***********************

#*********************** DOCUMENT READY ***********************

$ ->

  #---------- Fancybox ------------
  $("a.fancybox").fancybox()
  $("a.fancybox.iframe.statistics").fancybox
    height: "67%%"
  #---------- End Fancybox ------------

#*********************** END DOCUMENT READY ***********************