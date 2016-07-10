package com.example.anuja.surveyapp;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Layout;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.view.LayoutInflater;

public class Main2Activity extends AppCompatActivity {

    Button button;
    View myView;
    EditText Fname, Lname, dob, father,mother,foccupation,moccupation,language,adhar,altContact,contact,gender,location,income,livingPeriod,school;
    String fname,lname,DOB,Father,Mother,Foccup,Moccup,Lang,Adhar,AltContact,Contact,Gender,Location,Income,LivingPeriod,School;
    Context ctx;
    protected void onCreateView(  LayoutInflater inflater,ViewGroup container,Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        myView = inflater.inflate(R.layout.activity_main2, container, false);
        button = (Button) myView.findViewById(R.id.button);
        Fname = (EditText) myView.findViewById(R.id.editText);
        Lname = (EditText) myView.findViewById(R.id.editText1);
        dob=(EditText)myView.findViewById(R.id.editText2);
        father=(EditText)myView.findViewById(R.id.editText3);
        mother=(EditText)myView.findViewById(R.id.editText5);
        foccupation=(EditText)myView.findViewById(R.id.editText4);
        moccupation=(EditText)myView.findViewById(R.id.editText6);
        language=(EditText)myView.findViewById(R.id.editText7);
        adhar=(EditText)myView.findViewById(R.id.editText9);
        altContact=(EditText)myView.findViewById(R.id.editText14);
        contact=(EditText)myView.findViewById(R.id.editText13);
        gender=(EditText)myView.findViewById(R.id.radioButton);
        location=(EditText)myView.findViewById(R.id.editText10);
        income=(EditText)myView.findViewById(R.id.editText8);
        livingPeriod=(EditText)myView.findViewById(R.id.editText11);
        school=(EditText)myView.findViewById(R.id.editText12);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                MyDBHandler dbHandler = new MyDBHandler(getApplicationContext(),null,null,1);
                Survey survey = new Survey(fname,lname,DOB,Father,Mother,Foccup,Moccup,Lang,Adhar,Location,Contact,AltContact,Integer.parseInt(Income),Integer.parseInt(LivingPeriod),Gender.charAt(0),School.charAt(0));
                dbHandler.addSurvey(survey);
            }
        });


    }
}