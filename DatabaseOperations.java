package com.example.anuja.arogya2;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import com.example.anuja.arogya2.TableData.TableInfo;

/**
 * Created by anuja on 30-03-2016.
 */
public class DatabaseOperations extends SQLiteOpenHelper {

    public static final int database_version=1;
    


    public String CREATE_QUERY="CREATE TABLE "+TableInfo.TABLE_NAME+"("+TableInfo.FIRST_NAME+" TEXT,"+TableInfo.LAST_NAME+" TEXT,"+TableInfo.EMAIL+" VARCHAR PRIMARY KEY,"+TableInfo.PASSWORD+" VARCHAR);";
    public DatabaseOperations(Context context)
    {
        super(context, TableInfo.DATABASE_NAME,null,database_version);
        Log.d("Database operations","Database created");
    }
    @Override
    public void onCreate(SQLiteDatabase sdb) {

        sdb.execSQL(CREATE_QUERY);
        Log.d("Database operations", "Table created");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
    public void putInformation(DatabaseOperations dop,String fname,String lname,String email,String pass)
    {
        SQLiteDatabase SQ=dop.getWritableDatabase();
        ContentValues cv=new ContentValues();
        cv.put(TableInfo.FIRST_NAME,fname);
        cv.put(TableInfo.LAST_NAME,lname);
        cv.put(TableInfo.EMAIL,email);
        cv.put(TableInfo.PASSWORD,pass);
        Long k=SQ.insert(TableInfo.TABLE_NAME,null,cv);
        Log.d("Database operations", "One row inserted");


    }

    public Cursor getInformation(DatabaseOperations dop)
    {
        SQLiteDatabase SQ=dop.getReadableDatabase();
        String[] columns={TableInfo.FIRST_NAME,TableInfo.LAST_NAME,TableInfo.EMAIL,TableInfo.PASSWORD};
        Cursor CR=SQ.query(TableInfo.TABLE_NAME,columns,null,null,null,null,null);
        return CR;
    }
}
