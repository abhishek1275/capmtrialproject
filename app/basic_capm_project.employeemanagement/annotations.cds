
using employee as service from '../../srv/service';
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phone}',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Address}',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DateOfJoining}',
                Value : dateOfJoining,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>PersonalInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>DepartmentInformation}',
            ID : 'i18nDepartmentInformation',
            Target : '@UI.FieldGroup#i18nDepartmentInformation',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Phone}',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Address}',
            Value : address,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DateOfJoining}',
            Value : dateOfJoining,
        },
    ],
    UI.SelectionFields : [
        name,
        email,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : address,
        },
        TypeImageUrl : 'sap-icon://customer',
    },
    UI.FieldGroup #i18nDepartmentInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : department.ID,
                Label : '{i18n>DepartmentId}',
            },
            {
                $Type : 'UI.DataField',
                Value : department.departmentName,
                Label : '{i18n>DepartmentName}',
            },
            {
                $Type : 'UI.DataField',
                Value : department.departmentLocation,
                Label : '{i18n>DepartmentLocation}',
            },
            {
                $Type : 'UI.DataField',
                Value : department.departmentDescription,
                Label : '{i18n>DepartmentDescription}',
            },
        ],
    },
    UI.Identification : [
        
    ],
    UI.FieldGroup #testing : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : address,
                Label : 'address',
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
        ],
    },
    UI.FieldGroup #checking : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Employee}',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Department}',
    },
);

annotate service.Employee with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Department',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'departmentName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'departmentDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'departmentLocation',
            },
        ],
    }
};

annotate service.Employee with {
    name @(
        Common.Label : '{i18n>Name}',
        UI.MultiLineText : true,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Employee with {
    email @(
        Common.Label : '{i18n>Email}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : email,
                    ValueListProperty : 'email',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Department with {
    departmentName @UI.MultiLineText : true
};

annotate service.Department with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : departmentDescription,
            Label : 'departmentDescription',
        },
        {
            $Type : 'UI.DataField',
            Value : departmentLocation,
            Label : 'departmentLocation',
        },
        {
            $Type : 'UI.DataField',
            Value : departmentName,
            Label : 'departmentName',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Department}',
    }
);

