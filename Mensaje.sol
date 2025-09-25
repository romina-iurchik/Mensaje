// SPDX-License-Identifier: MIT
pragma solidity >0.8.26;

/*
 @title: Contrato mensaje
 @author: Romina
 @notice: este contrato guarda un mensaje
*/

contract Mensaje {
    // variables de estado
    // @notice variable para almacenar mensajes
    string s_mensaje;

    // eventos
    // @notice evento emitido cuando el mensaje es actualizado
    event Mensaje_MensajeActualizado(string mensaje);

    // funciones
    // @notice f(x) utilizada para almacenar un mensaje en la blockchain
    // @param _mensaje mensaje de entrada tipo string

    function setMensaje(string memory _mensaje) external {
        s_mensaje = _mensaje;

        emit Mensaje_MensajeActualizado(_mensaje);
    }

    // @notice f(x) get para devolver el mensaje almacenado
    // @return _mensaje almacenado
    // @dev f(x) de tipo view para que no consume gas

    function getMensaje() public view returns (string memory mensaje_) {
        mensaje_ = s_mensaje;
    }
}
