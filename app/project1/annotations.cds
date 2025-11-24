using RequestService as service from '../../srv/request-service';

annotate service.RequestHeader with @(
    
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'NO',
                Value : NO,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'startdate',
                Value : startdate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'enddate',
                Value : enddate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_ID',
                Value : status_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    {
      $Type: 'UI.ReferenceFacet',
      Label: '{i18n>RequestItems}',
      ID: 'RequestItems',
      Target: 'items/@UI.LineItem'

    }
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'NO',
            Value : NO,
        },
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        }
    ],
);


annotate service.RequestItem with @(
    UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'Item',
        Value : Item,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Resource',
        Value : Resource,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Catalog',
        Value : Catalog,
    //    @Common.FieldControl: #Mandatory
    },
    {
        $Type : 'UI.DataField',
        Label : 'Description',
        Value : description,
    }
]


);

