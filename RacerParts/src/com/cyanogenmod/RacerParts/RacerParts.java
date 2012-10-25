package com.cyanogenmod.RacerParts;

import com.cyanogenmod.RacerParts.R;


import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import java.io.IOException;

public class RacerParts extends PreferenceActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.racerparts);
    }

   @Override
   public void onPause() {
      super.onPause();
      try {
		Utils.updateSettings(PreferenceManager.getDefaultSharedPreferences(getBaseContext()));
	  } catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	  }
		      
   }
}
