{include file="header.tpl"}
<!-- arranca la parte dinamica -->
<h1 class="text-center">{$titulo}</h1>
<ul class="list-group mx-3">
{foreach from=$categorias item=categoria}
  <li class="list-group-item list-group-item bg-dark text-white text-center "><h1 class="cat">{$categoria->nombre_categoria}</h1></li>
{/foreach}
  </ul>
  {include file="footer.tpl"}