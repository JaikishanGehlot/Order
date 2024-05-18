using {com.satinfotech.jk as orders} from '../db/schema';

service Allorders {
    entity Order as projection on orders.Order
}

annotate Allorders.Order with @odata.draft.enabled;