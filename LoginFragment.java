package com.example.anuja.arogya2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.util.Log;
import android.view.Window;
import android.app.Activity;
import android.widget.TextView;
import android.widget.Toast;


public class LoginFragment extends Fragment {

    View myView;
    TextView RegisterHere;
    FragmentManager fragmentManager =getFragmentManager();
    Button Login;
    EditText USER_EMAIL,USER_PASS;
    String User_Email,User_Pass;
    Context CTX;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        myView=inflater.inflate(R.layout.fragment_login,container,false);


        USER_EMAIL=(EditText) myView.findViewById(R.id.email);
        USER_PASS=(EditText) myView.findViewById(R.id.password);
        Login=(Button)myView.findViewById(R.id.email_sign_in_button);
        Login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getContext(), "Please wait....", Toast.LENGTH_SHORT).show();
                User_Email = USER_EMAIL.getText().toString();
                User_Pass = USER_PASS.getText().toString();
                DatabaseOperations DOP=new DatabaseOperations(getContext());
                Cursor CR=DOP.getInformation(DOP);
                CR.moveToFirst();
                boolean loginstatus=false;
                String NAME="";

                do {

                    if((User_Email.equals(CR.getString(2)))&&(User_Pass.equals(CR.getString(3))))
                    {
                        loginstatus=true;
                        NAME=CR.getString(0)+" "+CR.getString(1);
                    }

                }while (CR.moveToNext());


                if(loginstatus&&(User_Email.length()!=0)&&(User_Pass.length()!=0))
                {
                    Toast.makeText(getContext(), "Login success\nWelcome "+NAME, Toast.LENGTH_LONG).show();
                    USER_EMAIL.setText("");
                    USER_PASS.setText("");
                    Intent intent=new Intent(getContext(),Notification.class);
                    startActivity(intent);
                }
                else
                {
                    Toast.makeText(getContext(), "Login failed", Toast.LENGTH_LONG).show();
                    USER_EMAIL.setText("");
                    USER_PASS.setText("");
                }
            }
        });



        return myView;

    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


    }
}
