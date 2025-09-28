<h1> Mensaje 📨</h1>   

<h2>Descripción</h2>
    Contrato donde se setea un mensaje con f(x) -> setMensaje(params) y se muestra con f(x) -> getMensaje()


<h2>Tecnologías utilizas</h2>

    Solidity
    SPDX License Identifier: MIT
    Remix, VSC
    MetaMask

<h2>Conceptos teóricos abordados</h2>

- Estructura base `Licencia/Pragma/Contrato`
- Documentación sigue el standar de [NatSpec](https://docs.soliditylang.org/en/latest/natspec-format.html)
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
    - f(x) de tipo getter
- Eventos `emit/event`
<h2>¿Cómo usarlo?</h2>

- Te recomiendo pasar por la documentación en [mi primer contrato](https://github.com/romina-iurchik/Miprimercontrato) que explica como deployar el contrato en `Remix` 

<h2>Apuntes o anotaciones de la clase que me ayudaron:</h2>
<h4>Tener en cuenta que son anotaciones personales que dependen algunas del contexto en el que se dijeron, no tomarlo literal e investigar un poquito.</h4>

- Las variables de storage o de estado son persistentes en el contrato, las [Variables globales](https://docs.soliditylang.org/en/latest/units-and-global-variables.html) no, pero, pueden ser accedidas desde todas las f(x) mientras se está ejecutando el código.
- Las funciones son el punto de entrada para interactuar con el sc, realizar cambios de estado, leer información previamente almacenada o ejecutar operaciones locales utilizando dos entradas(inputs) sin necesidad de leer nada almacenado en la blockchain. Esto depende de la lógica de la f(x) y el modificador
- El constructor no queda guardado en el bytecode
- El constructor se ejecuta una única vez al deployar el contrato y luego desaparece
- Ningún nro aleatorio se genera en la blockchain, se generan afuera y desde afuera se inyectan.
- Timestamp no es certero y puede ser manejado por los mineros
- Una transaccion es un mensaje pero un mensaje no es una transacción
- Los tipos complejos como: `array, struct, string`cuando se pasan por params hay que especificar donde estan (si no hay que modificar: memory, sino calldata)
- Hay que especificar que tipo de f(x) es: `lectura -> view -> no cobra gas` o `escritura -> nada -> no cobra gas`
- f(x) pure: es la función que no accede a ninguna variable de estado
- Acceder a una variable de estado para escribir o para leer es caro, por eso siempre es mejor acceder a una variable local
- Los eventos no pueden ser accedidos desde la blockchain pero si desde n codigo extreno
- Para ejecutar una sola vez una funcion se utiliza un flag y reentrancyGuard()
  ```Solidity
        < codigo... >

        unit8 public flag;

        modifier reentrancyGuard(){
            if (flag != 0) revert();
            flag =1;
            _;
            flag =0;
        }

        function setMessage(string calldata _message) public{
            reentrancyGuard{
                </codigo que se va a ejecutar en la linea donde se encuentra _;>
            }
        }

        < codigo... >

  ```
- Hay muchas anotaciones mas pero las voy a dejar para el proyimo poryecto

<h2>Cierre:</h2>
     
    Si hay algo que esta mal o no entendes no dudes en mandarme mensaje
    Acepto modificaciones de formato/contenido
    Hecho con cariño como primeros pasos en el mundo de los contratos inteligentes 🎐