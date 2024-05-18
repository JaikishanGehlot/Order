using {com.satinfotech.jk.Order as Order} from './order';

annotate Order with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: orderNumber
        },
        {
            $Type:'UI.DataField',
            Value: orderDate
        },
        {
            $Type:'UI.DataField',
            Value: shippingAddress
        },
        {
            $Type:'UI.DataField',
            Value: billingAddress
        },
        {
            $Type:'UI.DataField',
            Value: totalAmount
        }
    ]
);

annotate Order with @(
    UI.FieldGroup #OrderDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: orderNumber
        },
        {
            $Type:'UI.DataField',
            Value: orderDate
        },
        {
            $Type:'UI.DataField',
            Value: shippingAddress
        },
        {
            $Type:'UI.DataField',
            Value: billingAddress
        },
        {
            $Type:'UI.DataField',
            Value: totalAmount
        }
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'OrderGeneralInformation',
            Label : 'General Information',
            Target : '@UI.FieldGroup#OrderDetails',
        }
    ]
);
