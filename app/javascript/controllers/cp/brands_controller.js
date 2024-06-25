import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="cp--brands"
export default class extends Controller {
  connect() {
    $(this.element).DataTable( {
      processing: true,
      serverSide: false,
      responsive: true,
      destroy: true,
      pageLength: 20

  });
}}

