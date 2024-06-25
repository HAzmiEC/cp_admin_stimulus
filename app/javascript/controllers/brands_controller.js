import { Controller } from "@hotwired/stimulus"
import Datatable from "./datatable_controller";
export default class extends Datatable {
  get columns () {
    return [
      // { data: 'id', visible: false },
      { data: 'id' },
      { data: 'name' },
      { data: 'address' },
      { data: 'website' },
      { data: 'categories' }
    ]
  }

}