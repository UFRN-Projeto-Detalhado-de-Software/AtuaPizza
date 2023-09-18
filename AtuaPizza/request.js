
const localArea = document.querySelector(".local-form")
const delArea = document.querySelector(".delivery-form")
const encArea = document.querySelector(".enc-form")

localArea.addEventListener("click", () => {
    location.href = "./formPages/localPage.html"
})

delArea.addEventListener("click", () => {
    location.href = "./formPages/deliveryPage.html"
})

encArea.addEventListener("click", () => {
    location.href = "./formPages/encPage.html"
})