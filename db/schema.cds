using { managed, sap } from '@sap/cds/common';
namespace my.basic; 

entity RequestHeader : managed{ 
  key NO : Integer @Mandatory;
  title  : localized String(111) @Mandatory;
  descr  : localized String(1111);
  startdate : Timestamp;
  enddate  : Timestamp;
  items : Composition of many RequestItem
       on items.REQUEST = $self;
}

// annotate RequestHeader with @odata.draft.enabled;


entity RequestItem : managed { 
  key REQUEST : Association to RequestHeader;  
  key Item     : Integer;     // item number

  Resource     : String(111) ;
  Catalog      : String @mandatory;
  description  : localized String;
}
// annotate RequestItem with @odata.draft.enabled;

/** Hierarchically organized Code List for Genres */
entity statuses : sap.common.CodeList { 
  key ID   : Integer;
}