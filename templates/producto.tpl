{include file="header.tpl"}
<div class="container">
    <ul>
        <li><h1>{$producto["nombre"]}</h1></li>
        <li><h2>Precio: {$producto["precio"]} Pesos</h2></li>
        <li>{$producto["descripcion"]}</li>
        <li>Stock: {$producto["stock"]}</li>
    </ul>
</div>
{include file="footer.tpl"}