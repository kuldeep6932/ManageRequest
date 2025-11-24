sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/RequestHeaderList",
	"project1/test/integration/pages/RequestHeaderObjectPage",
	"project1/test/integration/pages/RequestItemObjectPage"
], function (JourneyRunner, RequestHeaderList, RequestHeaderObjectPage, RequestItemObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheRequestHeaderList: RequestHeaderList,
			onTheRequestHeaderObjectPage: RequestHeaderObjectPage,
			onTheRequestItemObjectPage: RequestItemObjectPage
        },
        async: true
    });

    return runner;
});

