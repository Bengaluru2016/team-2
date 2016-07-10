package com.example.anoop.survey;

import android.app.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

import com.example.anoop.survey.MainActivity;

public class SplashScreen extends Activity{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash);

        final ImageView iv=(ImageView) findViewById(R.id.splashID);
        final Animation an=AnimationUtils.loadAnimation(getBaseContext(), R.anim.rotate);
        final Animation an2=AnimationUtils.loadAnimation(getBaseContext(), R.anim.abc_fade_out);

        iv.startAnimation(an);
        an.setAnimationListener(new Animation.AnimationListener() {

            @Override
            public void onAnimationStart(Animation animation) {
                // TODO Auto-generated method stub

            }

            @Override
            public void onAnimationRepeat(Animation animation) {
                // TODO Auto-generated method stub

            }

            @Override
            public void onAnimationEnd(Animation animation) {
                // TODO Auto-generated method stub
                iv.setAnimation(an2);
                finish();
                Intent i= new Intent (getBaseContext(), MainActivity.class);
                startActivity(i);

            }
        });
    }

}
