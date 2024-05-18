namespace com.satinfotech.jk;
using { cuid, managed } from '@sap/cds/common';

entity Order: managed, cuid {
    @title:'Order Number'
    orderNumber: String(20);
    
    @title: 'Order Date'
    orderDate: Date;
    
    @title: 'Shipping Address'
    shippingAddress: String(100);
    
    @title: 'Billing Address'
    billingAddress: String(100);
    
    @title: 'Total Amount'
    totalAmount: Decimal(10, 2);
}
