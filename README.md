<h1> Mensaje 📨</h1>   

<h2>Descripción</h2>

    404 - El readme se encuentra en construcción ⛏️🏗️🚧👷🏻‍♀️

<h2>Tecnologías utilizas</h2>

    Solidity
    SPDX License Identifier: MIT
    Remix, VSC
    MetaMask

<h2>Conceptos teóricos abordados</h2>

- Estructura base `Licencia/Pragma/Contrato`
- Documentación
    - Tags: `@title @author @notice @dev @custom`
  -  Comentarios: Linea única con `/`, en bloque con `/* <lineas de comentario> */`
- Variables
    - Visibilidad `public/internal/private`
    - Tipos `state/local/global`
    - Tipos de almacenamiento `storage/memory/calldata`
- Funciones 
    - Estructura
    - Visibilidad `external/internal/private`
    - Modificadores `pure/view/payable`
    - Valores de retorno
- Eventos `emit/event`
<h2>¿Cómo usarlo?</h2>

- Te recomiendo pasar por la documentación que explica como deployar el contrato en `Remix` [Hacé click acá](https://github.com/romina-iurchik/Miprimercontrato)

<h2>Apuntes o anotaciones de la clase que me ayudaron:</h2>

- Las variables de storage o de estado son persistentes en el contrato, las [Variables globales](https://docs.soliditylang.org/en/latest/units-and-global-variables.html) no, pero, pueden ser accedidas desde todas las f(x) mientras se está ejecutando el código.
- Las funciones son el punto de entrada para interactuar con el sc realizar cambios de estado, leer información previamente almacenada o ejecutar operacion local utilizando dos entradas(inputs) sin necesidad de leer nada almacenado en la blockchain. Esto depende de la lógica de la f(x) y el modificador
- El constructor no queda guardado en el bytecode
- Ningún nro aleatorio se genera en la blockchain, se generan afuera y desde afuera se inyectan.
- Timestamp no es certero y puede ser manejado por los mineros
- Una transaccion es un mensaje pero un mensaje no es una transacción

<h2>Cierre:</h2>
     
    Si hay algo que esta mal o no entendes no dudes en mandarme mensaje.
    Hecho con cariño como primeros pasos en el mundo de los contratos inteligentes 🎐