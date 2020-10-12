{include file="headerAdmin.tpl"}
<table class="table table-dark">
    <thead>
        <tr>
            <th scope="col">Nombre</th>
            <th scope="col">precio</th>
            <th scope="col">Categorias</th>
            <th scope="col">Opcion-1</th>
            <th scope="col">Opcion-2</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$productos item=producto}
            <tr>
                <td><a href='{$prefijo}producto/{$producto["id"]}'>{$producto["nombre"]}</a></td>
                <td>{$producto["precio"]}</td>
                <td>{$producto["nombre_categoria"]}</td>
                <td><a class="badge badge-success" href='{$prefijo}formularioProducto?id_p={$producto["id"]}'>Editar</a></td>
                <td><a class="badge badge-danger" href='{$prefijo}deleteProducto?id_p={$producto["id"]}'>Borrar</a></td>
            </tr>
        {/foreach}
    </tbody>
</table>
{include file="footer.tpl"}