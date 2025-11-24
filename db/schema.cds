using {managed} from '@sap/cds/common';

namespace my.basic;

entity RequestHeader : managed {
  key NO        : Integer;
      title     : localized String(111);
      descr     : localized String(1111);
      startdate : Timestamp;
      enddate   : Timestamp;
      items     : Composition of many RequestItem
                    on items.REQUEST = $self;
}


entity RequestItem : managed {
  key REQUEST     : Association to RequestHeader;
  key Item        : Integer; // item number

      Resource    : String(111);
      Catalog     : String @mandatory;
      description : localized String;
}
