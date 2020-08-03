create table Doctor(Doc_id varchar(20) primary key,Doc_Name varchar(20),Gender varchar(10) check(Gender in('M','F','T')),DOB varchar(20),
Specialist varchar(20),Qualification varchar(20),Contact number(20),Address varchar(100),Dept_No varchar(20));
create table Department(Dept_No varchar(20) primary key, Dept_Name varchar(20), Room_No number, Floor number,
HOD varchar(20), Estd_Date varchar(20));
create table Staff (Staff_ID varchar(10) primary key, Staff_Name varchar(50), Category varchar(20),
Designation varchar(20), DOB varchar(20), Contact number(20), Address varchar(100), Dept_No varchar(20));
create table Patient(Pat_ID varchar(20) primary key, Pat_Name varchar(50), DOB varchar(20), Gender varchar(20), 
Contact number, Address varchar(50)); 
create table In_Patient (Pat_ID varchar(20) primary key, Date_Of_Admission varchar(20), Bed_No number, Start_Time varchar(100), End_Time varchar(100));
create table In_Patient_Prescription(Pat_ID varchar(50) primary key, Pres_ID varchar(50));
create table Appointment (App_ID varchar(20) primary key, Pat_ID varchar(20), Doc_ID varchar(20), Nurse_ID varchar(20), Consult_Room_No varchar(20),
App_Date varchar(20),App_Time varchar(50));
create table Prescribed_Medicines (Pres_ID varchar(20) primary key, Medicine_Name varchar(20), Dosage varchar(300), Brand varchar(20));
create table Hospital_Bill (Inv_No varchar(20) primary key, Inv_Date varchar(20) , Pat_ID varchar(20), Bill_Amount number, 
Payment_Type varchar(20),discount varchar(20));
create table Lab_Tests(Test_ID varchar(20) primary key, Pat_ID varchar(20), test_Date varchar(20), test_Time varchar(20));
create table Test_Results (Test_ID varchar(20) primary key, TT_ID varchar(20) , test_Result varchar(100));
create table Test_Types (TT_ID varchar(20) primary key, test_Description varchar(20), Low_Value varchar(50), High_Value varchar(50), 
Test_Method varchar(200),Technician varchar(20));
insert into Doctor values('D0001','Dr Ranjan sharma','M','19-July-1974','Cardiologist','DM','9324598769','6th Cross No 31 Inidranagar Bangalore Karnataka','D101');
insert into Doctor values('D0002','Dr Jignesh Patel','M','20-August-1978','Gynecologist','MS','9982634452','5 Jay street JP Nagar Bangalore Karnataka','D102');
insert into Doctor values('D0003','Dr Ridhima Joshi','F','04-November-1988','Neurologist','DM','9980776540','No 31 Richmond Circle 6th Main Bangalore Karnataka','D103');
insert into Doctor values('D0004','Dr Zubin Ahmed','M','20-August-1980','Physiotherapist','MPT','9972635452','No 4 Church Street 1st Cross Bangalore Karnataka','D104');
insert into Doctor values('D0005','Dr VVS Chaudhary','M','02-December-1978','ENT','M.Ch','9982634452','5 Block Street Mahadevpura Bangalore Karnataka','D105');
insert into Doctor values('D0006','Dr Rujita Iyer','F','01-January-1978','Pediatrician','MD','9999888822','6 Ray street Jaya Nagar Bangalore Karnataka','D106');
insert into Doctor values('D0007','Dr Jaya Shah','F','23-July-1977','Gynecologist','MD','8882634452','8 Chester street RR Nagar Bangalore Karnataka','D102');
insert into Doctor values('D0008','Dr Jay Patel','M','20-August-1978','Physiotherapist','MS','998675452','10 Bay street Rajaji Nagar Bangalore Karnataka','D104');
insert into Department values('D101','Cardiology','111','1','Dr Ranjan Sharma','21-July-2011');
insert into Department values('D102','Gynecology','112','1','Dr Jignesh Patel','21-August-2012');
insert into Department values('D103','Neurology','113','2','Dr Ridhima Joshi','02-January-2012');
insert into Department values('D104','Physiotherapy','114','2','Dr Zubin Ahmed','12-December-2011');
insert into Department values('D105','ENT','115','1','Dr VVS Chaudhary','12-December-2011');
insert into Department values('D106','Pediatrics','116','1','Dr Rujita Iyer','10-November-2011');
insert into Staff values('S0001','Rahat Khan','Technician','Junior','12-July-1998','9045673210','101 8th Cross Sarjapur Road Bangalore Karnataka','D190');
insert into Staff values('S0002','Sujata Mishra','Nurse','Head','01-November-1990','9084567743','111 6th Cross CMH Road Bangalore Karnataka','D102');
insert into Staff values('S0003','Ronish Bahl','Male Nurse','Junior','12-July-1998','9845679210','11 7th Cross Sarjapur Road Bangalore Karnataka','D102');
insert into Staff values('S0004','Dhairya Gokhle','Lab Technician','Senior','12-July-1980','9045663210','1 Opp Top in Town Mahadevpura Road Bangalore Karnataka','D100');
insert into Staff values('S0005','Bhallal Dev','Nurse','Junior','12-July-1998','9045673210','101 8th Cross Sarjapur Road Bangalore Karnataka','D101');
insert into Staff values('S0006','Anuskha Sharma','Nurse','Senior','12-January-1988','9045453210','18th Cross Tumkur Road Bangalore Karnataka','D101');
insert into Staff values('S0007','Virat Kohli','Male Nurse','Senior','12-July-1984','8055673210','11 8th Cross Mahadev Chowl Bangalore Karnataka','D103');
insert into Staff values('S0008','Rohit Chauhan','Male Nurse','Junior','05-July-1998','9045622210','10 1st Cross Kanakpura Road Bangalore Karnataka','D103');
insert into Staff values('S0009','Malika Dua','Nurse','Senior','26-July-1988','9066673210','1 8th Cross LIC quaters Malleshwaram Bangalore Karnataka','D104');
insert into Staff values('S0010','Rahat Ali','Male Nurse','Junior','2-July-1976','9995673210','101 8th Cross JeevanBhima Nagar Bangalore Karnataka','D104');
insert into Staff values('S0011','Baal Krishna','Male Nurse','Senior','16-November-1980','9885673210','21 8th Main Vignana Nagar Bangalore Karnataka','D105');
insert into Staff values('S0012','Radhika Sharma','Nurse','Senior','08-February-1977','9045677710','13 5th Cross Mallespalya Bangalore Karnataka','D105');
insert into Staff values('S0013','Mahi Vij','Nurse','Junior','12-March-1988','9045673111','1 10th Cross BEML Road Bangalore Karnataka','D106');
insert into Staff values('S0014','Jay Bhanushali','Male Nurse','Junior','6-April-1978','9434373210','3 18th Cross MG Road Bangalore Karnataka','D106');
insert into Staff values('S0015','Bhuvan Bam','Security','Junior','12-January-1995','9986745000','100 Security Quarters Basavanagar Bangalore Karnataka','D107');
insert into Staff values('S0016','Ajay Nager','Security','Head','23-April-1990','8907653456','101 Security Quarters Basavanagar Bangalore Karnataka','D107');
insert into Staff values('S0017','Tanmay Bhat','Security','Junior','12-November-1988','7789056780','102 Security Quarters Basavanagar Bangalore Karnataka','D107');
insert into Staff values('S0018','Shera Singh','Security','Head','2-October-1985','7709589235','103 Security Quarters Basavanagar Bangalore Karnataka','D107');
insert into Staff values('S0019','Parth Mathur','Cashier','Intern','7-July-1998','9904578650','10 29th Cross Halasuru Bangalore Karnataka','D108');
insert into Staff values('S0020','Rahul Thakkar','Cashier','Junior','8-May-1978','9007788660','1 8th Cross Nagasandra Bangalore Karnataka','D108');
insert into Staff values('S0021','Yash Purohit','Cashier','Senior','9-September-1979','6609875043','43 8th Cross Attiguppe Bangalore Karnataka','D108');
insert into Patient values('P0001','Shiv Thakkar','17-July-2000','M','8890991156','23 Boyles street Ramurthynagar Bangalore Karnataka');
insert into Patient values('P0002','Suyash Keshri','14-July-2001','M','9900667744','34 Diamond District Bangalore Karnataka');
insert into Patient values('P0003','Uttkarsh Singh','9-May-1997','M','7790991156','3 Shri Ram Marg Bangalore Karnataka');
insert into Patient values('P0004','Deepika Singh','6-September-1991','F','8897771156','23 Maximoff Street Bangalore Karnataka');
insert into Patient values('P0005','Shreya Bhat','3-August-2004','F','7777991156','Flat21 GoldVilla Ramurthynagar Bangalore Karnataka');
insert into Patient values('P0006','Latisha Nayak','7-May-2000','F','8890991111','3 8th Cross HAL Road Bangalore Karnataka');
insert into Patient values('P0007','Nishanth Navada','18-June-1988','M','7760991156','23 Thippasandra Bangalore Karnataka');
insert into Patient values('P0008','Khushi Patel','25-December-2005','F','8888991156','420 Purvankara Ramurthynagar Bangalore Karnataka');
insert into Patient values('P0009','Kshitij Gopali','7-May-1990','M','8989991156','23 3rd Main Ulsoor Bangalore Karnataka');
insert into Patient values('P0010','Ananya Joshi','22-October-1998','F','8890656556','44 Rajgruh Yemlur Bangalore Karnataka');
insert into In_Patient values('P0001','11-January-2020','100','11-Jan-2020 5:30pm','14-Jan-2020 10:00am');
insert into In_Patient values('P0002','11-January-2020','101','11-Jan-2020 9:00am','18-Jan-2020 10:00am');
insert into In_Patient values('P0003','10-December-2019','102','10-Dec-2019 1:30pm','10-Dec-2019 5:00pm');
insert into In_Patient values('P0004','11-January-2020','103','11-Jan-2020 8:30am','13-Jan-2020 8:00pm');
insert into In_Patient values('P0005','01-May-2020','100','01-May-2020 6:30pm','01-May-2020 8:00pm');
insert into In_Patient values('P0006','21-January-2020','100','21-Jan-2020 9:30am','22-Jan-2020 4:00am');
insert into In_Patient values('P0007','23-January-2020','105','23-Jan-2020 3:45pm','23-Jan-2020 6:00pm');
insert into In_Patient values('P0008','03-January-2020','107','03-Jan-2020 6:30pm','04-Jan-2020 9:00am');
insert into In_Patient values('P0009','08-February-2020','108','09-Feb-2020 2:10pm','09-Feb-2020 3:10pm');
insert into In_Patient values('P0010','25-December-2019','109','25-Dec-2019 9:15pm','28-Dec-2019 10:00am');
insert into In_Patient_Prescription values('P0001','PR00001');
insert into In_Patient_Prescription values('P0002','PR00002');
insert into In_Patient_Prescription values('P0003','PR00004');
insert into In_Patient_Prescription values('P0004','PR00006');
insert into In_Patient_Prescription values('P0005','PR00008');
insert into In_Patient_Prescription values('P0006','PR00010');
insert into In_Patient_Prescription values('P0007','PR00012');
insert into In_Patient_Prescription values('P0008','PR00014');
insert into In_Patient_Prescription values('P0009','PR00016');
insert into In_Patient_Prescription values('P0010','PR00018');
insert into Appointment values('A1','P0001','D0001','Bhallal Dev','111','11-Jan-2020','5:30 am');
insert into Appointment values('A2','P0002','D0001','Anushka Sharma','111','11-Jan-2020','09:00 am');
insert into Appointment values('A3','P0003','D0004','Malika Dua','114','10-Dec-2019','1:30 pm');
insert into Appointment values('A4','P0004','D0001','Bhallal Dev','111','11-Jan-2020','8:30 am');
insert into Appointment values('A5','P0005','D0002','Sujata Mishra','112','05-March-2020','6:30 pm');
insert into Appointment values('A6','P0006','D0002','Ronish Bahl','112','21-Jan-2020','9:30 am');
insert into Appointment values('A7','P0007','D0005','Radhika Sharma','115','23-Jan-2020','3:45 pm');
insert into Appointment values('A8','P0008','D0007','Ronish Bahl','112','03-Jan-2020','6:30 pm');
insert into Appointment values('A9','P0009','D0006','Mahi Vij','116','09-Feb-2020','2:10 am');
insert into Appointment values('A10','P0010','D0003','Virat Kohli','113','25-Dec-2019','9:15 pm');
insert into Prescription values('PR00001','A1','11-Jan-2020','5:30 am','Engioplasty');
insert into Prescription values('PR00002','A2','11-Jan-2020','9:00 am','Engiography');
insert into Prescription values('PR00004','A3','10-Dec-2019','1:30 pm','Excercise Session');
insert into Prescription values('PR00006','A4','11-Jan-2020','8:30 am','Respiratory Problem');
insert into Prescription values('PR00008','A5','05-March-2020','6:30 pm','Pregnancy Check up');
insert into Prescription values('PR00010','A6','21-Jan-2020','9:30 am','C-section Delivery');
insert into Prescription values('PR00012','A7','23-Jan-2020','3:45 pm','Infection in the throat');
insert into Prescription values('PR00014','A8','03-Jan-2020','6:30 pm','Normal Delivery');
insert into Prescription values('PR00016','A9','09-Feb-2020','2:10 am','Baby was having fever');
insert into Prescription values('PR00018','A10','25-Dec-2019','9:15 pm','Surgery for injured spinal cord');
insert into Prescribed_Medicines values('PR00001','Clopidogrel','300 mg loading dose followed by 75mg for 14 days upto 12months','XYZ');
insert into Prescribed_Medicines values('PR00002','Iohexol','180 mg/ml','ABC');
insert into Prescribed_Medicines values('PR00004','Oxycodone','5 mg after lunch and dinner ','LMN');
insert into Prescribed_Medicines values('PR00006','Broncholidators','Once in a day after a meal','XYZ');
insert into Prescribed_Medicines values('PR00008','Ibuprofen','100mg/5ml','ABP');
insert into Prescribed_Medicines values('PR00010','Ibuprofen','50mg/1.5ml','ABP');
insert into Prescribed_Medicines values('PR00012','Betadine','Take 1 cap of syrip in luke warm water 3 times inn a day','RZP');
insert into Prescribed_Medicines values('PR00014','Ibuprofen','100mg/ml','ABP');
insert into Prescribed_Medicines values('PR00016','Honey','Use half or one tsp as needed','RST');
insert into Prescribed_Medicines values('PR00018','Fentanyl','50mg/ml','NMN');
insert into Hospital_Bill values('INV01','14-Jan-2020','P0001','50000','Credit Card','2');
insert into Hospital_Bill values('INV02','18-Jan-2020','P0002','60000','Credit Card','1.5');
insert into Hospital_Bill values('INV03','10-Dec-2019','P0003','2500','Cash','0.5');
insert into Hospital_Bill values('INV04','13-Jan-2020','P0004','55000','Credit Card','2');
insert into Hospital_Bill values('INV05','05-March-2020','P0005','1500','Debit card','0.5');
insert into Hospital_Bill values('INV06','22-Jan-2020','P0006','200000','Credit Card','1');
insert into Hospital_Bill values('INV07','23-Jan-2020','P0007','2000','Debit Card','0.5');
insert into Hospital_Bill values('INV08','04-Jan-2020','P0008','30000','Credit Card','2');
insert into Hospital_Bill values('INV09','09-Feb-2020','P0009','1000','Cash','2');
insert into Hospital_Bill values('INV10','28-Dec-2019','P0010','80000','Credit Card','2');
insert into Lab_Tests values('T001','PR00001','11-Jan-2020','5:30 am');
insert into Lab_Tests values('T002','PR00002','11-Jan-2020','9:00 am');
insert into Lab_Tests values('T003','PR00004','10-Dec-2019','1:30 pm');
insert into Lab_Tests values('T004','PR00006','11-Jan-2020','8:30 am');
insert into Lab_Tests values('T005','PR00008','05-March-2020','6:30 pm');
insert into Lab_Tests values('T006','PR00010','21-Jan-2020','9:30 am');
insert into Lab_Tests values('T007','PR00012','23-Jan-2020','3:45 pm');
insert into Lab_Tests values('T008','PR00014','03-Jan-2020','6:30 pm');
insert into Lab_Tests values('T009','PR00016','09-Feb-2020','2:10 am');
insert into Lab_Tests values('T010','PR00018','25-Dec-2019','9:15 pm');
insert into Test_Results values('TOO1','1','Low Diabities');
insert into Test_Results values('TOO2','1','High Diabities');
insert into Test_Results values('TOO3','4','Swelling Near the ankle');
insert into Test_Results values('TOO4','1','Low Diabities');
insert into Test_Results values('TOO5','5','Healthy baby');
insert into Test_Results values('TOO6','5','Healthy baby');
insert into Test_Results values('TOO7','3','Low Red Blood Cell count');
insert into Test_Results values('TOO8','5','Healthy baby');
insert into Test_Results values('TOO9','3','Everything is normal');
insert into Test_Results values('TO10','2','Certain amount of nitrites present');
insert into Test_Types values('1','Diabetes Test','70','199','Fasting Plasma Glucose','Dhairya Gokhle');
insert into Test_Types values('2','Urine Test','55','14','Urinalysis','Rahat Khan');
insert into Test_Types values('3','Blood Test','8.6 mg/dl','10.2 mg/dl','Blod collected after needle being pricked into ur veins','Dhairya Gokhle');
insert into Test_Types values('4','X-Ray','-','-','Screening infront of a X-ray machine','Rahat Khan');
insert into Test_Types values('5','Ultrasound Test','-','-','The baby development is seen through this procedure','Dhairya Gokhle');
select*from Test_Types;
alter table Doctor add Experience varchar(50);
update Doctor Set Experience='15 years' where Doc_ID='D0001';
update Doctor Set Experience='10 years' where Doc_ID='D0002';
update Doctor Set Experience='15 years' where Doc_ID='D0003';
update Doctor Set Experience='9 years' where Doc_ID='D0004';
update Doctor Set Experience='20 years' where Doc_ID='D0005';
update Doctor Set Experience='16 years' where Doc_ID='D0006';
update Doctor Set Experience='15 years' where Doc_ID='D0007';
update Doctor Set Experience='11 years' where Doc_ID='D0008';
select* from Doctor
select * from Hospital_Bill;
select * from Doctor where Specialist='Neurologist' or Specialist='Cardiologist';
select*from Appointment;
select * from Appointment where Consult_Room_No='111' and App_Date='11-Jan-2020';
select * from Test_Types where Low_Value between '25' and '75';
select Diagnosis_Detail,Pres_ID from Prescription where Pres_ID='PR00012';
select * from Patient where gender='F';
select Staff_Name,Staff_ID,Dept_No from Staff where Dept_No != 'D102';
select Pat_ID from In_Patient where Date_Of_Admission='01-May-2020' and Bed_No='100';
update Hospital_Bill set Discount=Discount + 5 where Bill_Amount>'100000';
update Department set HOD='D0003' where Dept_Name='Cardiology';
delete from Prescribed_Medicines where Brand='XYZ';
update Test_Types set Low_Value='10',High_Value='30' where test_Description='Urine Test';
update Staff set Contact='49901354' where Category like '%Nurse';
delete from Staff where Dept_No='D190' and Category ='Technician';



















