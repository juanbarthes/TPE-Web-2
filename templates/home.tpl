{include file="header.tpl"}
<!-- arranca la parte dinamica -->
<h1>{$titulo}</h1>
<ul class="list-group">
{foreach from=$categorias item=categoria}
  <li class="list-group-item list-group-item bg-dark text-white text-center h1">{$categoria->nombre_categoria}</li>
{/foreach}
  </ul>

  {include file="footer.tpl"}