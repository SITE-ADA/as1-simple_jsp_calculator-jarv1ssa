const formControls = document.querySelectorAll(".form-control");
const p1 = document.querySelector("#p1");
const p2 = document.querySelector("#p2");
const select = document.querySelector("#op");

const operations = ["add", "sub", "mul", "div"];
const urlParams = new URLSearchParams(window.location.search);

formControls.forEach((formControl) => {
  ["focus", "blur"].forEach((event) => {
    formControl.children[0].addEventListener(event, () => {
      formControl.classList.toggle("active");
    });
  });
});

p1.value = urlParams.get("p1") || "";
p2.value = urlParams.get("p2") || "";

select.value = operations.includes(urlParams.get("op"))
  ? urlParams.get("op")
  : "add";
