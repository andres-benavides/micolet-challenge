import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  constructor() {
    super(...arguments);

    // Define las constantes aquí
    this.checkboxes = document.querySelectorAll('input[type="checkbox"]');
    this.checkboxError = document.getElementById("checkbox-error");
  }

  validate(event) {

    // Verifica si al menos un checkbox está marcado
    const atLeastOneChecked = Array.from(this.checkboxes).some(checkbox => checkbox.checked);

    // Muestra u oculta el mensaje de error
    if (atLeastOneChecked) {
      this.checkboxError.classList.add("hidden");
    } else {
      event.preventDefault(); // Evita el envío del formulario
      this.checkboxError.classList.remove("hidden");
    }
  }
}