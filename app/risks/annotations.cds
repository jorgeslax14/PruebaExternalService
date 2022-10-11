using RiskService from '../../srv/risk-service';
 // Risk List Report Page
 annotate RiskService.Risks with @(UI : {
    HeaderInfo : {
       TypeName : 'Risk',
       TypeNamePlural : 'Risks',
       Title : {
          $Type : 'UI.DataField',
          Value : title
       },
       Description : {
          $Type : 'UI.DataField',
            Value : descr
       }
    },
    SelectionFields : [prio],
    Identification : [{Value : title}],
    // Define the table columns
    LineItem : [
       {Value : title},
       {Value : miti_ID},
       {Value : owner},
<<<<<<< HEAD
        //### BEGIN OF INSERT
       {Value : bp_BusinessPartner},
        //### END OF INSERT    
       //{Value : email_AddressID },   
=======
>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0
       { 
          Value : prio,
          Criticality : criticality
       },
       {
          Value : impact,
          Criticality : criticality
       },
    ],
 });
 // Risk Object Page
 annotate RiskService.Risks with @(UI : {
     Facets : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Main',
        Target : '@UI.FieldGroup#Main',
     }],
     FieldGroup #Main : {Data : [
       {Value : miti_ID},
       {Value : owner},
<<<<<<< HEAD
        //### BEGIN OF INSERT
        {Value : bp_BusinessPartner},
        //### END OF INSERT 
        //{Value : email_AddressID },       
=======
>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0
       {
           Value : prio,
           Criticality : criticality
       },
       { 
           Value : impact,
           Criticality : criticality
       }
    ]},
 });