import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="conversations"
export default class extends Controller {
  connect() {
      console.log("connectes to convo controller");
      $('#go-to-last').click(function (e){
          var panel = $(this).parent().parent().parent().parent().parent();
          var messages_list = panel.find('.messages-list');
          console.log(messages_list[0]);
          console.log(messages_list.prop("scrollHeight"));
          messages_list.scrollTop(messages_list.prop("scrollHeight"));
      })
  }
}
