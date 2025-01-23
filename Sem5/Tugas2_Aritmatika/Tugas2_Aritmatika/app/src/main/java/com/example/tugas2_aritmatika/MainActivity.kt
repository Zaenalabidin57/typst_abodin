package com.example.tugas2_aritmatika

import android.os.Bundle
import android.widget.TextView
import android.widget.Button
import android.widget.EditText
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)

        val editTextNumber1 = findViewById<EditText>(R.id.editTextNumber1)
        val editTextNumber2 = findViewById<EditText>(R.id.editTextNumber2)

        val buttonMultiply = findViewById<Button>(R.id.buttonMultiply)
        val buttonDivide = findViewById<Button>(R.id.buttonDivide)
        val textViewResult = findViewById<TextView>(R.id.textViewResult)

        buttonMultiply.setOnClickListener {
            val number1 = editTextNumber1.text.toString().toInt()
            val number2 = editTextNumber2.text.toString().toInt()
            val result = number1 * number2
            textViewResult.text = result.toString()
            }

        buttonDivide.setOnClickListener {
            val number1 = editTextNumber1.text.toString().toDouble()
            val number2 = editTextNumber2.text.toString().toDouble()
            val result = number1 / number2
            textViewResult.text = result.toString()

        }
    }
}