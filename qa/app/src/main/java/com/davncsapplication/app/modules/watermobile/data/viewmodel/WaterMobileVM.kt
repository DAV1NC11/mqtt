package com.davncsapplication.app.modules.watermobile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.davncsapplication.app.modules.watermobile.`data`.model.WaterMobileModel
import org.koin.core.KoinComponent

class WaterMobileVM : ViewModel(), KoinComponent {
  val waterMobileModel: MutableLiveData<WaterMobileModel> = MutableLiveData(WaterMobileModel())

  var navArguments: Bundle? = null
}
