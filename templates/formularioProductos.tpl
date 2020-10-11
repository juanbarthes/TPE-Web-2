{include file="header.tpl"}
<div class="container">
<form action={$action} method="POST">
<div class="form-group">
  <label for="nombre">Nombre</label>
  <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Producto" value="{$producto[nombre]}">
</div>
<div class="form-group">
    <label for="descripcion">Descripcion</label>
    <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Descripcion" value="{$producto[descripcion]}">
  </div>
  <div class="form-group">
    <label for="precio">Precio</label>
    <input type="number" class="form-control" id="precio" name="precio" value="{$producto[precio]}">
  </div>
  <div class="form-group">
    <label for="stock">Stock</label>
    <input type="number" class="form-control" id="stock" name="stock" value="{$producto[stock]}">
  </div>
  <select class="form-control form-control-lg" name="categoria">
    <option>Ninguna</option>
    {foreach from=$categorias item=categoria}
      <option>{$categoria->nombre_categoria}</option>
    {/foreach}
  </select>

<button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
{include file="footer.tpl"}