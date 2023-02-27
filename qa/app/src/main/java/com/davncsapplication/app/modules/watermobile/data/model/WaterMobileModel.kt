package com.davncsapplication.app.modules.watermobile.`data`.model

import com.davncsapplication.app.R
import com.davncsapplication.app.appcomponents.di.MyApp
import kotlin.String

data class WaterMobileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtReading: String? = MyApp.getInstance().resources.getString(R.string.lbl_80)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTaptorefresh: String? =
      MyApp.getInstance().resources.getString(R.string.msg_tap_to_refresh)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTank: String? = MyApp.getInstance().resources.getString(R.string.lbl_tank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReadingz: String? = MyApp.getInstance().resources.getString(R.string.lbl_80)

)
