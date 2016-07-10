package com.example.anuja.surveyapp;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;

public class MyDBHandler extends SQLiteOpenHelper {

    private static final int DATABASE_VERSION = 1;
    private static final String DATABASE_NAME = "samridhi.db";
    private static final String TABLE_MESSAGE = "survey";

    public static final String COLUMN_ID = "id";
    public static final String COLUMN_FNAME = "first_name";
    public static final String COLUMN_LNAME = "last_name";
    public static final String COLUMN_DOB = "dob";
    public static final String COLUMN_GENDER = "gender";
    public static final String COLUMN_FATHER = "father";
    public static final String COLUMN_MOTHER = "mother";
    public static final String COLUMN_foccupation = "father_occupation";
    public static final String COLUMN_moccupation = "mother_occupation";
    public static final String COLUMN_language = "language";
    public static final String COLUMN_income = "income";
    public static final String COLUMN_adhar = "adhar_card_number";
    public static final String COLUMN_location = "location";
    public static final String COLUMN_living_period = "living_period";
    public static final String COLUMN_school = "school_before";
    public static final String COLUMN_contact = "contact_number";
    public static final String COLUMN_alternate_contact_number = "alt_contact_number";
    public static final String COLUMN_flag = "flag";

    public MyDBHandler(Context context, String name,SQLiteDatabase.CursorFactory factory, int version)
    {
        super(context, DATABASE_NAME, factory, DATABASE_VERSION);
    }


    @Override
    public void onCreate(SQLiteDatabase db) {
        String CREATE_MESSAGE_TABLE = "CREATE TABLE " +
                TABLE_MESSAGE + "("
                + COLUMN_ID + " INTEGER PRIMARY KEY," + COLUMN_FNAME
                + " TEXT," + COLUMN_LNAME + " VARCHAR(20)," + COLUMN_DOB
                + " DATE," + COLUMN_GENDER + " CHAR," + COLUMN_FATHER
                + " VARCHAR(20)," + COLUMN_foccupation + " VARCHAR(20)," + COLUMN_MOTHER
                + " VARCHAR)," + COLUMN_moccupation + " VARCHAR(20)," + COLUMN_language + "VARCHAR(20)," +
                COLUMN_income + "INTEGER," + COLUMN_adhar + "VARCHAR(20)," + COLUMN_location + "TEXT," +
                COLUMN_living_period + "INTEGER," + COLUMN_school + "CHAR," + COLUMN_contact + "VARCHAR(10)," +
                COLUMN_alternate_contact_number + "varchar(20)," + COLUMN_flag + "BINARY(1)";
        db.execSQL(CREATE_MESSAGE_TABLE);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion,int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_MESSAGE);
        onCreate(db);
    }



    public void addSurvey(Survey survey) {
        ContentValues values = new ContentValues();
        values.put(COLUMN_FNAME, survey.getfname());
        values.put(COLUMN_LNAME, survey.getlname());
        values.put(COLUMN_DOB, survey.getdob());
        values.put(COLUMN_GENDER, ""+survey.getgender());
        values.put(COLUMN_FATHER, survey.getfather());
        values.put(COLUMN_foccupation, survey.getfoccupation());
        values.put(COLUMN_MOTHER, survey.getmother());
        values.put(COLUMN_moccupation, survey.getmoccupation());
        values.put(COLUMN_language, survey.getlanguage());
        values.put(COLUMN_income, survey.getincome());
        values.put(COLUMN_adhar, survey.getadhar());
        values.put(COLUMN_location, survey.getlocation());
        values.put(COLUMN_living_period, survey.getlivingperiod());
        values.put(COLUMN_school, ""+survey.getschoolbefore());
        values.put(COLUMN_contact, survey.getcontact());
        values.put(COLUMN_alternate_contact_number, survey.getalt_contact());


        SQLiteDatabase db = this.getWritableDatabase();

        db.insert(TABLE_MESSAGE, null, values);
        db.close();
    }


    public boolean deleteMessage(int id) {

        boolean result = false;

        String query = "Select * FROM " + TABLE_MESSAGE + " WHERE " + id + " =  \"" + id + "\"";

        SQLiteDatabase db = this.getWritableDatabase();

        Cursor cursor = db.rawQuery(query, null);

        Survey message=new Survey();

        if (cursor.moveToFirst()) {
            db.delete(TABLE_MESSAGE, COLUMN_ID + " = ?",
                    new String[] { String.valueOf(message.getID()) });
            cursor.close();
            result = true;
        }
        db.close();
        return result;
    }

    //split this into 2
    /*public ArrayList<String> getAll0Messages()
    {
        ArrayList<String> array_list = new ArrayList<String>();

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res =  db.rawQuery( "select * from message", null );
        res.moveToLast();

        while(res.isBeforeFirst() == false){
            if(res.getInt(res.getColumnIndex(COLUMN_PAID))==0)
                array_list.add(res.getString(res.getColumnIndex(COLUMN_NAME))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_PHONE))+"||"+
                        res.getInt(res.getColumnIndex(COLUMN_AMOUNT))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_DATE))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_REMARKS))+"||"+
                        "!");
            res.moveToPrevious();
        }
        return array_list;
    }

    public ArrayList<String> getAll1Messages()
    {
        ArrayList<String> array_list = new ArrayList<String>();

        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res =  db.rawQuery( "select * from message", null );
        res.moveToLast();

        while(res.isBeforeFirst() == false){
            if(res.getInt(res.getColumnIndex(COLUMN_PAID))==1)
                array_list.add(res.getString(res.getColumnIndex(COLUMN_NAME))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_PHONE))+"||"+
                        res.getInt(res.getColumnIndex(COLUMN_AMOUNT))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_DATE))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_REMARKS))+"||"+
                        res.getString(res.getColumnIndex(COLUMN_TXNID)));
            res.moveToPrevious();
        }
        return array_list;
    }
*/
}