using riskmanagement as rm from '../db/schema';

 // Annotate Risk elements
 annotate rm.Risks with {
<<<<<<< HEAD
   ID @title : 'Risk';
   title @title : 'Title';
   owner @title : 'Owner';
   prio @title : 'Priority';
   descr @title : 'Description';
   miti @title : 'Mitigation';
   impact @title : 'Impact';
   //### BEGIN OF INSERT
   bp @title : 'Business Partner';
   //### END OF INSERT
   //email @title : 'EmailBp';
   criticality @title : 'Criticality';
 }

 // Annotate Miti elements
 annotate rm.Mitigations with {
   ID @(
     UI.Hidden,
     Common : {Text : descr}
   );
   owner @title : 'Owner';
   descr @title : 'Description';
 }

 //### BEGIN OF INSERT
 annotate rm.BusinessPartners with {
   BusinessPartner @(
     UI.Hidden,
     Common : {Text : LastName}
   );
   LastName @title : 'Last Name';
   FirstName @title : 'First Name';
 }
 //### END OF INSERT

/*  annotate rm.EmailAdress with {
   BusinessPartner @(
     UI.Hidden,
     Common : {Text : Person}
   );
   Person @title : 'Person';
   EmailAddress @title : 'EmailAddress';
 }*/

annotate rm.Risks with {
   miti @(Common : {
     //show text, not id for mitigation in the context of risks
     Text : miti.descr,
     TextArrangement : #TextOnly,
     ValueList : {
     Label : 'Mitigations',
     CollectionPath : 'Mitigations',
     Parameters : [
       {
         $Type : 'Common.ValueListParameterInOut',
         LocalDataProperty : miti_ID,
         ValueListProperty : 'ID'
       },
       {
         $Type : 'Common.ValueListParameterDisplayOnly',
         ValueListProperty : 'descr'
       }
     ]
   }
 });
 //### BEGIN OF INSERT
 bp @(Common : {
   Text : bp.LastName,
   TextArrangement : #TextOnly,
   ValueList : {
      Label : 'Business Partners',
      CollectionPath : 'BusinessPartners',
      Parameters : [
         {
           $Type : 'Common.ValueListParameterInOut',
           LocalDataProperty : bp_BusinessPartner,
           ValueListProperty : 'BusinessPartner'
         },
         {
            $Type : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'LastName'
          },
          {
             $Type : 'Common.ValueListParameterDisplayOnly',
             ValueListProperty : 'FirstName'
          }
       ]
     }
   })
//### END OF INSERT 

}
=======
 ID     @title : 'Risk';
 title  @title : 'Titulo';
 owner  @title : 'Owner';
 prio   @title : 'Priority';
 descr  @title : 'Description';
 miti   @title : 'Mitigation';
 impact @title : 'Impact';
 } 

// Annotate Miti elements
 annotate rm.Mitigations with {
 ID @( 
      UI.Hidden,
      Common : {Text : descr}
 );
owner @title : 'Owner';
descr @title : 'Description';
 }

annotate rm.Risks with {
   miti @(Common : {
    //show text, not id for mitigation in the context of risks
    Text            : miti.descr,
    TextArrangement : #TextOnly,
    ValueList       : {
    Label          : 'Mitigations',
    CollectionPath : 'Mitigations',
    Parameters     : [
       {
       $Type : 'Common.ValueListParameterInOut',
       LocalDataProperty : miti_ID,
       ValueListProperty : 'ID'
       },
       {
       $Type : 'Common.ValueListParameterDisplayOnly',
       ValueListProperty : 'descr'
       }
    ]
    }
  });
 }  
>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0
