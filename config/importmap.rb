# Pin npm packages by running ./bin/importmap

pin "tabler", preload: true
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true

pin "jquery", to: "jquery.min.js", preload: true
pin "jquery_ujs", to: "jquery_ujs.js", preload: true
pin "jquery-ui", to: "jquery-ui.min.js", preload: true
pin "datatables", to: "https://cdn.datatables.net/2.0.8/js/dataTables.min.js", preload: true
pin "datatables-jqueryui", to: "https://cdn.datatables.net/2.0.8/js/dataTables.jqueryui.min.js", preload: true
pin "dataTable-css", to: "https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.min.css", preload: true