using { my.basic as my } from '../db/schema';
service RequestService { 
  @odata.draft.enabled
  entity RequestHeader as projection on my.RequestHeader {
    *,
    items
};
  
entity RequestItem as projection on my.RequestItem;

//   entity RequestItem as projection on my.RequestItem {
//   *,
//   description @(Common.FieldControl: #Mandatory)

// }
}