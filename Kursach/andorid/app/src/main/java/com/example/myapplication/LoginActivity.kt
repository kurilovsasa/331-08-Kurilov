package com.example.myapplication

import android.annotation.SuppressLint
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class LoginActivity : AppCompatActivity() {
    private lateinit var dbHelper: DatabaseHelper
    private lateinit var usernameInput: EditText
    private lateinit var passwordInput: EditText
    private lateinit var loginButton: Button
    private lateinit var errorText: TextView
    private lateinit var vosst: Button

    @SuppressLint("MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        dbHelper = DatabaseHelper(this)
        
        usernameInput = findViewById(R.id.usernameInput)
        passwordInput = findViewById(R.id.passwordInput)
        loginButton = findViewById(R.id.loginButton)
        errorText = findViewById(R.id.errorText)
        vosst = findViewById(R.id.buttonVosst)

        loginButton.setOnClickListener {
            val username = usernameInput.text.toString()
            val password = passwordInput.text.toString()

            if (username.isEmpty() || password.isEmpty()) {
                errorText.text = "Пожалуйста, заполните все поля"
                return@setOnClickListener
            }

            if (dbHelper.checkUser(username, password)) {
                Toast.makeText(this, "Вход выполнен успешно", Toast.LENGTH_SHORT).show()
                finish()
            } else {
                errorText.text = "Неверное имя пользователя или пароль"
            }
        }
        vosst.setOnClickListener(View.OnClickListener {
            var intent= Intent(this, VostActivity::class.java)
            startActivity(intent)
        })
    }
} 