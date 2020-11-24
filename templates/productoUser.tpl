{include file="header.tpl"}

<div class="divproducto">
  <img class="card-img-top" src="img/Procesadores.jpg" alt="Card image cap">
  <div class="card-body">
    <h2 class="card-title">{$producto["nombre"]}</h2>
    <h5 class="card-title">Precio: {$producto["precio"]} ARS</h5>
    <p class="card-text">{$producto["descripcion"]}</p>
    <p class="card-text"><small class="text-muted">Stock: {$producto["stock"]}</small></p>
  </div>
</div>
<h2>Comentarios</h2>
{include file="commentForm.tpl"}
<div class="my-2 mx-5 p-3 bg-success" data-permits="{$permits}" data-id={$producto["id"]} id="commentsBox">
</div>
<script src="js/comments.js"></script>
{include file="footer.tpl"}