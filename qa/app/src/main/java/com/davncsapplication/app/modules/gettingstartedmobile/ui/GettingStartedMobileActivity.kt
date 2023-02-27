package com.davncsapplication.app.modules.gettingstartedmobile.ui

import androidx.activity.viewModels
import com.davncsapplication.app.R
import com.davncsapplication.app.appcomponents.base.BaseActivity
import com.davncsapplication.app.databinding.ActivityGettingStartedMobileBinding
import com.davncsapplication.app.modules.gettingstartedmobile.`data`.viewmodel.GettingStartedMobileVM
import kotlin.String
import kotlin.Unit

class GettingStartedMobileActivity :
    BaseActivity<ActivityGettingStartedMobileBinding>(R.layout.activity_getting_started_mobile) {
  private val viewModel: GettingStartedMobileVM by viewModels<GettingStartedMobileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.gettingStartedMobileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "GETTING_STARTED_MOBILE_ACTIVITY"

  }
}
