package com.example.myapplication

import android.annotation.SuppressLint
import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    @SuppressLint("MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)

        // Ensure the button IDs match those in your layout file
        val recipesButton = findViewById<Button>(R.id.recipesButton)
        val registerButton = findViewById<Button>(R.id.buttonReg)
        val loginButton = findViewById<Button>(R.id.loginButton)

        // Ensure the class names are correct and match the actual activity classes
        val recipesIntent = Intent(this, RecipePagerAdapter::class.java)
        val registerIntent = Intent(this, RegActivity::class.java)
        val loginIntent = Intent(this, LoginActivity::class.java)

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        recipesButton.setOnClickListener {
            startActivity(recipesIntent)
        }

        registerButton.setOnClickListener {
            startActivity(registerIntent)
        }

        loginButton.setOnClickListener {
            startActivity(loginIntent)
        }
    }

}
