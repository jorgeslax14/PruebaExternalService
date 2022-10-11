<<<<<<< HEAD
using { riskmanagement as rm } from '../db/schema';
=======
using { riskmanagement as rm } from '../db/schema'; 
>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0

 @path: 'service/risk'
 service RiskService {
 entity Risks as projection on rm.Risks;
     annotate Risks with @odata.draft.enabled;
 entity Mitigations as projection on rm.Mitigations;
     annotate Mitigations with @odata.draft.enabled;
<<<<<<< HEAD
 entity BusinessPartners as projection on rm.BusinessPartners;
 //entity EmailAddress as projection on rm.EmailAdress;
=======
//entity BusinessPartners as projection on rm.BusinessPartners; 
>>>>>>> 57140df68f2397af30edf81a3bc05f2726640fc0
 }