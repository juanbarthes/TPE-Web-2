{include file="header.tpl"}

<div class="divproducto">
  <img class="card-img-top" src="../img/Procesadores.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">{$producto["nombre"]}</h5>
    <p class="card-text">{$producto["descripcion"]}</p>
    <p class="card-text"><small class="text-muted">Stock: {$producto["stock"]}</small></p>
  </div>
</div>

{include file="footer.tpl"}