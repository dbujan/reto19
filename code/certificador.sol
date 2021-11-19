pragma solidity ^0.4.25;
pragma experimental ABIEncoderV2;

import "./ownable.sol";

contract Certificador is Ownable {


    event NewCertificado(string nombre, string descripcion,string[] _competencias , uint8 ect);
    event NewCheque(string descripcionC);
    

    struct Certificado{
        string nombre;
        string descripcion;
        string[] competencias;
        uint8 ect;
    }
    
    struct Cheque{
        string descripcionC;
    }
    
    mapping(uint => address) certificadoToOwner;
    mapping(address => uint) ownerCertificadoCount;
    
    mapping(uint => address) chequeToOwner;
    mapping(address => uint) ownerChequeCount;
    Certificado[] public certificados;
    Cheque[] public cheques;

    function crearCertificado(string _nombre, string _descripcion,string[] _competencias , uint8 _ect, address _para, string _descripcionC) public
    {
        uint id = certificados.push(Certificado(_nombre, _descripcion, _competencias, _ect)) - 1;
        uint idC = cheques.push(Cheque(_descripcionC));
        
        certificadoToOwner[id]= _para;
        ownerCertificadoCount[_para] ++;
        
        chequeToOwner[idC] = _para;
        ownerCertificadoCount[_para] ++;

        emit NewCertificado(_nombre, _descripcion,_competencias , _ect);
        emit NewCheque(_descripcionC);
    }

    
}