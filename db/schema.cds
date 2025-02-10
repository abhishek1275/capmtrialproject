namespace employee;

entity Employee
{
    key ID : UUID;
    name : String(100);
    phone : Integer;
    email : String(100);
    address : String(100);
    dateOfJoining : Date;
    department : Association to one Department;
}

entity Department
{
    key ID : UUID;
    departmentName : String(100);
    departmentDescription : String(100);
    departmentLocation : String(100);
    employee : Association to many Employee on employee.department = $self;
}
