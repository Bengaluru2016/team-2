package com.example.anuja.arogya2;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.content.Context;
import android.content.Intent;
import android.app.Service;

import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class RegisterFragment extends Fragment {

    View myView;
    EditText Fname, Lname, Email, Pass, CPass;
    String f_name, l_name, e_mail, pass, c_pass;
    Button REG;
    Context ctx;


    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        myView = inflater.inflate(R.layout.fragment_register, container, false);
        Fname = (EditText) myView.findViewById(R.id.firstname);
        Lname = (EditText) myView.findViewById(R.id.lastName);
        Email = (EditText) myView.findViewById(R.id.email);
        Pass = (EditText) myView.findViewById(R.id.password);
        CPass = (EditText) myView.findViewById(R.id.confirmPassword);
        REG = (Button) myView.findViewById(R.id.email_register_button);


        REG.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                f_name = Fname.getText().toString();
                l_name = Lname.getText().toString();
                e_mail = Email.getText().toString();
                pass = Pass.getText().toString();
                c_pass = CPass.getText().toString();
                String emailMatch = "^[_A-Za-z0-9-\\+]+(\\.[A-Za-z0-9-]+)*@" + "[a-zA-Z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

                if (f_name.length() == 0 || l_name.length() == 0 || e_mail.length() == 0 || pass.length() == 0 || c_pass.length() == 0) {

                    Toast.makeText(getContext(), "Please fill in all the details", Toast.LENGTH_LONG).show();
                    Fname.setText("");
                    Lname.setText("");
                    Email.setText("");
                    Pass.setText("");
                    CPass.setText("");
                } else if (f_name.length() < 4) {
                    Toast.makeText(getContext(), "Minimum length of First name:4", Toast.LENGTH_LONG).show();
                    Email.setError("Invalid");
                    Email.requestFocus();
                    Fname.setText("");
                    Lname.setText("");
                } else if (!validateEmail(e_mail)) {
                    Toast.makeText(getContext(), "Enter valid email address", Toast.LENGTH_LONG).show();
                    Email.setText("");

                } else if (!(pass.equals(c_pass))) {

                    Toast.makeText(getContext(), "Passwords are not matching", Toast.LENGTH_LONG).show();

                    Pass.setText("");
                    CPass.setText("");
                } else if (pass.length() < 6) {
                    Toast.makeText(getContext(), "Password strength:low. Minimum length:6", Toast.LENGTH_LONG).show();

                    Pass.setText("");
                    CPass.setText("");
                } else {
                    DatabaseOperations DB = new DatabaseOperations(getContext());
                    DB.putInformation(DB, f_name, l_name, e_mail, pass);
                    Toast.makeText(getContext(), "registration successful", Toast.LENGTH_LONG).show();
                    Fname.setText("");
                    Lname.setText("");
                    Email.setText("");
                    Pass.setText("");
                    CPass.setText("");

                }
            }
        });

        return myView;
    }

    protected boolean validateEmail(String email) {
        String emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[A-Za-z0-9-]+)*@" + "[a-zA-Z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        Pattern pattern = Pattern.compile(emailPattern);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }


}









