using { employee as my } from '../db/schema.cds';

@path : '/service/employee'
service employee
{

    // @odata.draft.enabled
    @odata.draft.enabled
    entity Employee1 as
        projection on my.Employee;

    // @odata.draft.enabled
    @odata.draft.enabled
    entity Department1 as
        projection on my.Department;
}
//annotate employee.Employee1 with @odata.draft.enabled;


annotate employee with @requires :
[
    'authenticated-user'
];
