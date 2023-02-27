package com.davncsapplication.app.modules.splashmobile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.davncsapplication.app.modules.splashmobile.`data`.model.SplashMobileModel
import org.koin.core.KoinComponent

class SplashMobileVM : ViewModel(), KoinComponent {
  val splashMobileModel: MutableLiveData<SplashMobileModel> = MutableLiveData(SplashMobileModel())

  var navArguments: Bundle? = null
}
