pragma solidity ^0.4.25;

import "./certificador.sol";


contract CertificadoHelper is Certificador{

    modifier onlyOwnerOf(uint _certificadoId) {
        require(msg.sender == certificadoToOwner[_certificadoId]);
        _;
    }
    function changeNombre(uint _id,string _nombre){
        require(msg.sender == certificadoToOwner[_id]);
        certificados[_id].nombre = _nombre;
    }
    
    function changeDescripcion(uint _id,string _descripcion){
        require(msg.sender == certificadoToOwner[_id]);
        certificados[_id].descripcion = _descripcion;

    }

    function changeECT(uint _id,string _descripcion){
        require(msg.sender == certificadoToOwner[_id]);
        certificados[_id].descripcion = _descripcion;
        
    }
    
    
    function changeDescripcionCheque(uint _id, string _descripcion) onlyOwnerOf(_id){
        cheques[_id].descripcion = _descripcion;
        
    }


}