package com.davncsapplication.app.modules.splashmobile.ui

import android.os.Handler
import android.os.Looper
import androidx.activity.viewModels
import com.davncsapplication.app.R
import com.davncsapplication.app.appcomponents.base.BaseActivity
import com.davncsapplication.app.databinding.ActivitySplashMobileBinding
import com.davncsapplication.app.modules.splashmobile.`data`.viewmodel.SplashMobileVM
import com.davncsapplication.app.modules.watermobile.ui.WaterMobileActivity
import kotlin.String
import kotlin.Unit

class SplashMobileActivity :
    BaseActivity<ActivitySplashMobileBinding>(R.layout.activity_splash_mobile) {
  private val viewModel: SplashMobileVM by viewModels<SplashMobileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.splashMobileVM = viewModel
    Handler(Looper.getMainLooper()).postDelayed( {
      val destIntent = WaterMobileActivity.getIntent(this, null)
      startActivity(destIntent)
      }, 3000)
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "SPLASH_MOBILE_ACTIVITY"

    }
  }
