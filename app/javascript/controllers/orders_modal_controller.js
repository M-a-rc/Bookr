import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["items", "form"]

  connect() {
    console.log(this.element)
    console.log(this.itemsTarget)
    console.log(this.formTarget)
  }

  send(event) {

    event.preventDefault()
    $('#OrderModal').modal('show');
    const dateStart = $('#order_starting_date').val();
    const dateEnd =$('#order_ending_date').val();
    const message =$('#order_message').val();

    $('#valStart').text(` ${dateStart} ->`)
    $('#valEnd').text(` ${dateEnd}`)
    $('#valMessage').text(`${message}`)

    const btnSubmit = $("[name='commit']")
    btnSubmit.prop("disabled",false)

    $('#close').click(function() {
      btnSubmit.prop("disabled",false)
    });

    $('#confirm').click(function() {
      $('#new_order').submit();
    });
  }
}
