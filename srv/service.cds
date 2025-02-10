using { employee as my } from '../db/schema.cds';

@path : '/service/employee'
service employee
{
    entity Employee1 as
        projection on my.Employee;
}

annotate employee with @requires :
[
    'authenticated-user'
];
