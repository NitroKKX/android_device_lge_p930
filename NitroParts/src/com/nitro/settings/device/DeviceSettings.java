package com.nitro.settings.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.TwoStatePreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;

public class DeviceSettings extends PreferenceActivity  {

    public static final String KEY_BACKLIGHTDISABLE = "backlight_disable";
    public static final String KEY_WIFI_PM = "wifi_pm";
    public static final String KEY_SDCARD_CACHE = "sdcard_cache";
    public static final String KEY_BLX = "blx";
    public static final String KEY_GSENSOR = "gsensor";

    private TwoStatePreference mBacklightDisable;
    private TwoStatePreference mWifiPm;
    private ListPreference mSDCardCache;
    private ListPreference mBlx;
    private Preference mGSensor;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.main);

        mBacklightDisable = (TwoStatePreference) findPreference(KEY_BACKLIGHTDISABLE);
        mBacklightDisable.setEnabled(BacklightDisable.isSupported());
        mBacklightDisable.setOnPreferenceChangeListener(new BacklightDisable());

        mWifiPm = (TwoStatePreference) findPreference(KEY_WIFI_PM);
        mWifiPm.setEnabled(WifiPm.isSupported());
        mWifiPm.setOnPreferenceChangeListener(new WifiPm());

        mSDCardCache = (ListPreference) findPreference(KEY_SDCARD_CACHE);
        mSDCardCache.setEnabled(SDCardCache.isSupported());
        mSDCardCache.setOnPreferenceChangeListener(new SDCardCache());
		
        mBlx = (ListPreference) findPreference(KEY_BLX);
        mBlx.setEnabled(Blx.isSupported());
        mBlx.setOnPreferenceChangeListener(new Blx());

        mGSensor = (Preference) findPreference(KEY_GSENSOR);
        mGSensor.setEnabled(GSensor.isSupported());
    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    @Override
    protected void onPause() {
        super.onPause();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

}
