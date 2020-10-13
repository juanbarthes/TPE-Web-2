{include file="headerAdmin.tpl"}
<!-- arranca la parte dinamica -->
<hr>
<h1 class="text-center my-2">{$titulo}</h1>
<hr>
<div class="d-flex justify-content-center h1 mx-3">
<a href="formularioCategoria" class="mx-3 h1 badge badge-primary">Crear categoria</a>
<a href="formularioProducto" class="mx-3 h1 badge badge-success">Agregar Producto</a>
</div>

<ul class="list-group mx-3">
{foreach from=$categorias item=categoria}
  <li class="list-group-item list-group-item bg-dark text-white text-center h1"> 
  <a class="text-decoration-none text-reset" href='productos/{$categoria->id_categoria}'>{$categoria->nombre_categoria}</a>
  <a class="badge badge-success col-md-auto" href='formularioCategoria?id_c={$categoria->id_categoria}'>Editar</a>
  <a class="badge badge-danger col-md-auto" href='deleteCategoria/{$categoria->id_categoria}'>Borrar</a>
  </li>
{/foreach}
  </ul>

  {include file="footer.tpl"}