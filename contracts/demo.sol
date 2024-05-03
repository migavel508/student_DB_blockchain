// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudDB{
    struct Student{
        uint256 StudID;
        string name;
        uint256 mark;

    }
    mapping (uint256 =>Student) student;

    function addStudent(uint256 _StudID, string memory _name,uint256 _mark) public{
        student[_StudID]=Student(_StudID, _name, _mark);

    }
    function getDet(uint256 _StudID) public view returns(uint256,string memory, uint256){
        Student memory students = student[_StudID];
        return  (students.StudID, students.name,students.mark);
    }
}