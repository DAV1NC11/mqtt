package com.davncsapplication.app.modules.watermobile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.activity.viewModels
import com.davncsapplication.app.R
import com.davncsapplication.app.appcomponents.base.BaseActivity
import com.davncsapplication.app.databinding.ActivityWaterMobileBinding
import com.davncsapplication.app.modules.watermobile.`data`.viewmodel.WaterMobileVM
import java.sql.DriverManager
import kotlin.Unit
import android.os.Handler


abstract class WaterMobileActivity : BaseActivity<ActivityWaterMobileBinding>(R.layout.activity_water_mobile) {
  private val viewModel: WaterMobileVM by viewModels<WaterMobileVM>()

  private lateinit var textView: TextView
  private lateinit var reading: TextView
  private val handler = Handler()
  private val delay = 50 // in milliseconds
  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.waterMobileVM = viewModel


    textView = findViewById(R.id.txtReading)
    reading = findViewById(R.id.txtReadingz)

    // Set up the database connection
    val connString =
      "jdbc:postgresql://139.144.155.173:5432/mqttgasdb?user=mqttgas1&password=wakilungya**"
    val conn = DriverManager.getConnection(connString)

    // Define the SQL query to fetch the last record
    //val sql = "SELECT * FROM <TABLE> ORDER BY id DESC LIMIT 1"

    val sql = "SELECT * FROM test"
    val updateTextView = object : Runnable {
      override fun run() = try {
        // Execute the SQL query to fetch the last record
        val stmt = conn.createStatement()
        val rs = stmt.executeQuery(sql)
        rs.next()
        val text = rs.getString("reading")
        stmt.close()
        rs.close()

        // Update the TextView with the fetched data
        textView.text = text
        reading.text = text

      } catch (e: Exception) {
        // Handle the exception
        e.printStackTrace()
      } finally {
        // Post this Runnable again after the delay
        handler.postDelayed(this, delay.toLong())
      }

      //override fun setUpClicks(): Unit {
     // }

      //companion object {
       // const val TAG: String = "WATER_MOBILE_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, WaterMobileActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
  }

