package com.davncsapplication.app.modules.gettingstartedmobile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.davncsapplication.app.modules.gettingstartedmobile.`data`.model.GettingStartedMobileModel
import org.koin.core.KoinComponent

class GettingStartedMobileVM : ViewModel(), KoinComponent {
  val gettingStartedMobileModel: MutableLiveData<GettingStartedMobileModel> =
      MutableLiveData(GettingStartedMobileModel())

  var navArguments: Bundle? = null
}
