package com.test.grocery;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import org.w3c.dom.Text;

import java.util.HashMap;

public class LoginActivity extends AppCompatActivity {

    //ui views

     private EditText EmailEt,PasswordEt;
     private TextView ForgotTv,NoAccountTv;
     private Button LoginBt;

     private FirebaseAuth firebaseAuth;
     private ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate( savedInstanceState );
        setContentView( R.layout.activity_login );

        //init ui views

        EmailEt = findViewById( R.id.EmailEt );
        PasswordEt = findViewById( R.id.PasswordEt );
        ForgotTv = findViewById( R.id.ForgotTv );
        NoAccountTv = findViewById( R.id.NoAccountTv );
        LoginBt = findViewById( R.id.LoginBt );
