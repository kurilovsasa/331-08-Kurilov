package com.example.myapplication

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.RecyclerView

class RecipePagerAdapter : AppCompatActivity() {
    private lateinit var backButton: Button
    private lateinit var mainActivityIntent: Intent

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.recipe_content)
        
        backButton = findViewById(R.id.buttonBack)
        mainActivityIntent = Intent(this, MainActivity::class.java)
        
        backButton.setOnClickListener {
            startActivity(mainActivityIntent)
        }
    }
}





