import { Controller } from "@hotwired/stimulus"
import Sortable from 'sortablejs'
import Rails from "@rails/ujs"
import {  patch } from '@rails/request.js'

// Connects to data-controller="sortable"
export default class extends Controller {
  connect() {
    Sortable.create(this.element, {
      animation: 300,
      ghostClass: "drag-ghost",
      onUpdate: function(e){
        const {storeId} = e.item.dataset;
        const newIndex = e.newIndex + 1

        console.log(newIndex);
        const url = `/api/v1/stores/${storeId}/sort`

        patch(url, {body: JSON.stringify({ newIndex})}).then((a)=>{console.log(a.ok);})
        // const response = await post('localhost:3000/my_endpoint', { body: JSON.stringify({ name: 'Request.JS' }) })
        // if (response.ok) {
        // }
      }

    })
  }

}
