
const localArea = document.querySelector(".local-form")
const delArea = document.querySelector(".delivery-form")
const encArea = document.querySelector(".enc-form")

localArea.addEventListener("click", () => {
    location.href = "localPage"
})

delArea.addEventListener("click", () => {
    location.href = "cardapio"
})

encArea.addEventListener("click", () => {
    location.href = "encPage"
})
