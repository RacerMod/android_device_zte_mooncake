package com.cyanogenmod.RacerParts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.preference.PreferenceManager;
import java.io.IOException;

public class RacerPartsStartup extends BroadcastReceiver
{
   @Override
   public void onReceive(final Context context, final Intent bootintent) {
      try {
		Utils.updateSettings(PreferenceManager.getDefaultSharedPreferences(context));
	  } catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	  }
   }
}
