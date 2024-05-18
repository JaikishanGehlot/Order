sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'order/test/integration/FirstJourney',
		'order/test/integration/pages/OrderList',
		'order/test/integration/pages/OrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderList, OrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('order') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderList: OrderList,
					onTheOrderObjectPage: OrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);