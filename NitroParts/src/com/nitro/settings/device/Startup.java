package com.nitro.settings.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class Startup extends BroadcastReceiver {

    @Override
    public void onReceive(final Context context, final Intent bootintent) {
        BacklightDisable.restore(context);
        WifiPm.restore(context);
        SDCardCache.restore(context);
        Blx.restore(context);
    }
}
