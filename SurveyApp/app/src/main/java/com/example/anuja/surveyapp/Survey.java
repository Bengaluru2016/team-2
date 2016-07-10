package com.example.anuja.surveyapp;

/**
 * Created by anuja on 10-07-2016.
 */
public class Survey {
    private  String FirstName,LastName,DOB,FatherName,Mothername,Foccupation,Moccupation,lang,aadhar,location,contact,alt_contact;
    private int income,living_period,id;
    private char gender,school;
    public Survey(){
    }

    public Survey(String FirstName,String LastName,String DOB,String FatherName,String Mothername,String Foccupation,String Moccupation,String lang,String aadhar,String location,String contact,String alt_contact,int income,int living_period,char gender,char school){
        this.FirstName=FirstName;
        this.LastName=LastName;
        this.DOB=DOB;
        this.FatherName=FatherName;
        this.Mothername=Mothername;
        this.Foccupation=Foccupation;
        this.Moccupation=Moccupation;
        this.lang=lang;
        this.aadhar=aadhar;
        this.location=location;
        this.alt_contact=alt_contact;
        this.contact=contact;
        this.income=income;
        this.living_period=living_period;
        this.gender=gender;
        this.school=school;
    }



    public int getID(){return this.id;}
    public void setfname(String FirstName){this.FirstName=FirstName;}
    public String getfname(){return this.FirstName;}
    public void setlname(String LastName){this.LastName=LastName;}
    public String getlname(){return this.LastName;}
    public void setdob(String dob){this.DOB=dob;}
    public String getdob(){return this.DOB;}
    public void setgender(char gender){this.gender=gender;}
    public char getgender(){return this.gender;}
    public void setfather(String father){this.FatherName=father;}
    public String getfather(){return this.FatherName;}
    public void setfoccupation(String foccupation){this.Foccupation=foccupation;}
    public String getfoccupation(){return this.Foccupation;}
    public void setmother(String mother){this.Mothername=mother;}
    public String getmother(){return this.Mothername;}
    public void setmoccupation(String moccupation){this.Moccupation=moccupation;}
    public String getmoccupation(){return this.Moccupation;}
    public void setlanguage(String language){this.lang=language;}
    public String getlanguage(){return this.lang;}
    public void setincome(int income){this.income=income;}
    public int getincome(){return this.income;}
    public void setadhar(String adhar){this.aadhar=adhar;}
    public String getadhar(){return this.aadhar;}
    public void setlocation(String location){this.location=location;}
    public String getlocation(){return this.location;}
    public void setlivingperiod(int living_period){this.living_period=living_period;}
    public int getlivingperiod(){return this.living_period;}
    public void setschoolbefore(char school){this.school=school;}
    public char getschoolbefore(){return this.school;}
    public void setcontact(String contact){this.contact=contact;}
    public String getcontact(){return this.contact;}
    public void setalt_contact(String alt_contact){this.alt_contact=alt_contact;}
    public String getalt_contact(){return this.alt_contact;}












}