
namespace riskmanagement;

using {managed} from '@sap/cds/common';

entity Risks : managed {
   key ID : UUID @(Core.Computed : true);
<<<<<<< HEAD
    title : String(100);
    owner : String;
    prio : String(5);
    descr : String;
    miti : Association to Mitigations;
    impact : Integer;
    bp : Association to BusinessPartners; // <-- uncomment this   
    criticality : Integer;
}

entity Mitigations : managed {
  key ID : UUID @(Core.Computed : true);
    descr : String;
    owner : String;
     timeline : String;
    risks : Association to many Risks
             on risks.miti = $self;
}

// using an external service from S/4
using {API_BUSINESS_PARTNER as external} from '../srv/external/API_BUSINESS_PARTNER.csn';

entity BusinessPartners as projection on external.A_BusinessPartner {
  key BusinessPartner, Supplier, FirstName, Language, LastName
 }
 /*entity EmailAdress as projection on external.A_AddressEmailAddress {
     key AddressID, Person, EmailAddress     
 }*/

 // // email: Association to EmailAdress;
=======
       title : String(100);
       owner : String;
       prio : String(5);
       descr : String;
       miti : Association to Mitigations;
       impact : Integer;
       //bp : Association to BusinessPartners;
       criticality : Integer;
}
 
entity Mitigations : managed {
  key ID : UUID @(Core.Computed : true);
      descr : String;
      owner : String;
      timeline : String;
      risks : Association to many Risks
               on risks.miti = $self;
}


>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0
