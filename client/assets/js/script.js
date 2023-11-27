slct_main = document.querySelector(".main_content")
slct_img_prod = document.querySelector(".img")
fltr_crc = document.querySelector(".filter_circle")


async function all_products(url = 'http://127.0.0.1:8000/products', data = {}) {

  const response = await fetch(url, {
    method: "GET",
    mode: "cors", 
  });
  const res = await response.json();
  for (i of res){
    create_div = slct_main.appendChild(document.createElement('div'))
    image = create_div.appendChild(document.createElement('img')).src = i.img
    create_div2 = create_div.appendChild(document.createElement('dasdiv'))
    names = create_div2.appendChild(document.createElement('h2')).innerHTML = i.product
    desc = create_div2.appendChild(document.createElement('p')).innerHTML = i.description
  }
}

async function filter(url = 'http://127.0.0.1:8000/product_types', data = {}) {

  const response = await fetch(url, {
    method: "GET",
    mode: "cors", 
  });
  const res = await response.json();
  for (i of res){
    create_a = fltr_crc.appendChild(document.createElement('p'))
    types = create_a.appendChild(document.createElement('p')).innerHTML = i.product_type
  }
}

all_products()
filter()