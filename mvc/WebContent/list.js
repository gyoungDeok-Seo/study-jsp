/**
 * 
 */
const table = document.querySelector("table");

let text = ``;
products.forEach(product => {
	text += `<tr>`;
	text += `<td>` + product.id + `</td>`;
	text += `<td><a href="/mvc/read.product?id=` + product.id + `">` + product.productName + `</a></td>`;
	text += `<td>` + product.productPrice + `</td>`;
	text += `<td>` + product.productStock + `</td>`;
	text += `</tr>`;
});
table.innerHTML += text;