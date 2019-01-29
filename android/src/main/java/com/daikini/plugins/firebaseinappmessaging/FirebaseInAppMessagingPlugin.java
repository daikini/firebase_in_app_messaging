package com.daikini.plugins.firebaseinappmessaging;

import android.app.Activity;
import android.os.Bundle;
import com.google.firebase.FirebaseApp;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry;
import java.util.Map;

/** Flutter plugin for Firebase In-App Messaging. */
public class FirebaseInAppMessagingPlugin implements MethodCallHandler {
  private final PluginRegistry.Registrar registrar;

  public static void registerWith(PluginRegistry.Registrar registrar) {
    final MethodChannel channel =
        new MethodChannel(registrar.messenger(), "plugins.daikini/firebase_in_app_messaging");
    channel.setMethodCallHandler(new FirebaseInAppMessagingPlugin(registrar));
  }

  private FirebaseInAppMessagingPlugin(PluginRegistry.Registrar registrar) {
    this.registrar = registrar;
    FirebaseApp.initializeApp(registrar.context());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    switch (call.method) {
      default:
        result.notImplemented();
        break;
    }
  }
}