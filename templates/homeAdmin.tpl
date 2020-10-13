{include file="headerAdmin.tpl"}
<!-- arranca la parte dinamica -->
<h1 class="text-center">{$titulo}</h1>
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