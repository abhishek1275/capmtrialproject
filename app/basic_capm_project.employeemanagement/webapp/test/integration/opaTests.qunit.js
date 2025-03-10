sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'basiccapmproject/employeemanagement/test/integration/FirstJourney',
		'basiccapmproject/employeemanagement/test/integration/pages/EmployeeList',
		'basiccapmproject/employeemanagement/test/integration/pages/EmployeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('basiccapmproject/employeemanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);