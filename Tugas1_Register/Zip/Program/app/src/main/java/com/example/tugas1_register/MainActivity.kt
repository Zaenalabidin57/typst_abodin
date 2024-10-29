package com.example.tugas1_register

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)

        val editTextName = findViewById<android.widget.EditText>(R.id.editTextName)
        val  buttonRegister = findViewById<android.widget.Button>(R.id.buttonRegister)
        val tvwelcome = findViewById<android.widget.TextView>(R.id.tvwelcome)
            
            buttonRegister.setOnClickListener {
            val name = editTextName.text.toString()
            tvwelcome.text = "Welcome $name"

        }
    }
}