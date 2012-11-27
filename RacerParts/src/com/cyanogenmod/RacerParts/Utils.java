package com.cyanogenmod.RacerParts;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import android.content.SharedPreferences;

public class Utils {

    static public void writeValue(String parameter, int value) {
        try {
            FileOutputStream fos = new FileOutputStream(new File(parameter));
            fos.write(String.valueOf(value).getBytes());
            fos.flush();
            fos.getFD().sync();
            fos.close();
        } catch (FileNotFoundException e) {
           e.printStackTrace();
        } catch (IOException e) {
           e.printStackTrace();
        }
    }

    static public void updateSettings(SharedPreferences prefs) throws IOException {
        // USB charging
        if(prefs.getBoolean("usb_charging", true))
            writeValue("/sys/module/msm_battery/parameters/usb_chg_enable", 1);
        else
            writeValue("/sys/module/msm_battery/parameters/usb_chg_enable", 0);
        // Pinch zoom
        if(prefs.getBoolean("ts_zoomhack", true))
            writeValue("/sys/module/msm_ts/parameters/zoomhack_enabled", 1);
        else
            writeValue("/sys/module/msm_ts/parameters/zoomhack_enabled", 0);
    }

}
