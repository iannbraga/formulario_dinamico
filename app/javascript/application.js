import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

// app/assets/javascripts/application.js
document.addEventListener("turbolinks:load", function() {
    $(document).on('click', '.add_fields', function (e) {
      e.preventDefault();
      var association = $(this).data('association');
      var content = $(this).data('fields');
      var new_id = new Date().getTime();
      content = content.replace(/new_item_form/g, "itens_attributes_" + new_id);
      content = content.replace(/new_item/g, "itens_attributes][" + new_id);
      $(this).before(content);
    });
  });
  