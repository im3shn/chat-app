import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="conversations"
export default class extends Controller {
  connect() {
      console.log("connectes to convo controller");
    $('.toggle-window').click(function(e){
        console.log("touched");
        e.preventDefault();
        var panel = $(this).parent().parent();
        var messages_list = panel.find('.messages-list');
        panel.find('.panel-body').toggle();
        panel.attr('class', 'panel panel-default');
        console.log(vic);
        if (panel.find('.panel-body').is(':visible')) {
          var height = messages_list[0].scrollHeight;
          messages_list.scrollTop(height);
        }
      });
  }
}
