slct_main = document.querySelector(".main_cont")
slct_img_prod = document.querySelector(".img_product")
slct_name_prod = document.querySelector(".name_prod")
slct_desc_prod = document.querySelector(".desc_prod")






async function all_products(url = 'http://127.0.0.1:8000/products', data = {}) {

  const response = await fetch(url, {
    method: "GET",
    mode: "cors", 
  });
  const res = await response.json();
  console.log(res)
  console.log(res[0].name)
  slct_name_prod.innerHTML = res[0].product
  slct_img_prod.src = res[0].img.src
  slct_desc_prod.innerHTML = res[0].description
}

all_products()