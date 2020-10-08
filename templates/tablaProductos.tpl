{include file="header.tpl"}
<!-- arranca la parte dinamica -->
<h1>Nuestros Productos</h1>
<table class="table table-dark">
    <thead>
      <tr>
        <th scope="col"></th>
        <th scope="col">Producto</th>
        <th scope="col">Precio</th>
        <th scope="col">Stock</th>
      </tr>
    </thead>
    <tbody>
    {foreach from=$productos item=producto}
      <tr>
        <th scope="row"><img class= "img-small" src="./img/Gabinetes.jpg" alt="imgproducto"></th>
        <td>{$producto->nombre}</td>
        <td>{$producto->precio}</td>
        <td>{$producto->stock}</td>
      </tr>
    {/foreach}
    </tbody>
  </table>
  {include file="footer.tpl"}