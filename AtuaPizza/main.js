/*import "./styles/base.css"
import "./styles/card.css"
import "./styles/request.css"
*/

const clientArea = document.querySelector(".card-client")
if (clientArea){
    clientArea.addEventListener("click", () => {
        location.href = "request.html";
    })
}

const saborPizzaCardapio = document.querySelectorAll('.card-title.sabor-pizza');
const saborPizzaCard = document.querySelectorAll('.card.sabor-card');

if(saborPizzaCardapio){
    Array.from(saborPizzaCardapio).forEach(pizza => {    
        pizza.parentElement.parentElement.addEventListener("click", () => {
            const sabor = pizza.textContent.replace(/\s/g, '-').toLowerCase();
            console.log(pizza)
            localStorage.setItem('saborEscolhido', sabor);
            location.href = "/formPages/deliveryPage.html"
        })
    });
}
const saborPizzaForm = document.querySelectorAll('input.sabor-pizza[type=radio]');
const saborEscolhido = localStorage.getItem('saborEscolhido');

if(saborPizzaForm){
    if(saborEscolhido){
        Array.from(saborPizzaForm).forEach(saborPizzaForm => {
            if(saborPizzaForm.id === saborEscolhido){
                saborPizzaForm.setAttribute('checked', 'checked');
            }
            console.log(saborPizzaForm.id)
        });
    }
}

const pedidoForm = document.querySelector(".realizar-pedido");
if(pedidoForm){
    const voltarButton = pedidoForm.querySelector(".voltar");
    const finalizarButton = pedidoForm.querySelector(".finalizar-pedido");
    if (voltarButton){
        voltarButton.addEventListener("click", () => {
            location.href = "/formPages/cardapioPage.html"
        })
    }

    if (finalizarButton){
        finalizarButton.addEventListener("click", () => {
            location.href = "/formPages/finalizadoPage.html"
        })
    }
}