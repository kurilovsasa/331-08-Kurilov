using Npgsql;

namespace Demos
{
    public partial class Form1 : Form
    {
        private string connect = "host = localhost; port = 5432; username = postgres; database = postgres; password = 123;";

        public Form1()
        {
            InitializeComponent();
            metod();
        }
        public void metod() 
        {
            NpgsqlConnection connection = new NpgsqlConnection(connect);
            connection.Open();
            NpgsqlCommand command = new NpgsqlCommand("select*from partners_import;", connection);
            NpgsqlDataReader reader = command.ExecuteReader();
            int y = 0;
            while (reader.Read())
            {
                Panel panel = new Panel();
                {
                    panel.Size = new Size(400, 100);
                    panel.BorderStyle = BorderStyle.FixedSingle;
                    panel.Location = new Point(5, y);
                }

                Label type_name = new Label();
                {
                    type_name.Text = $"{reader.GetString(0)} | {reader.GetString(1)}";
                    type_name.AutoSize = true;
                    type_name.Location = new Point(0,0);
                }
                Label director = new Label();
                {
                    director.Text = $"{reader.GetString(2)} ";
                    director.AutoSize = true;
                    director.Location = new Point(0, 15);
                }
                Label telephone_number = new Label();
                {
                    telephone_number.Text = $"+7 {reader.GetString(4)} ";
                    telephone_number.AutoSize = true;
                    telephone_number.Location = new Point(0, 35);
                }
                Label reiting = new Label();
                {
                    reiting.Text = $"Рейтинг: {reader.GetInt32(7)} ";
                    reiting.AutoSize = true;
                    reiting.Location = new Point(0, 55);
                }

                y = y + 130;
                this.Controls.Add(panel);
                panel.Controls.Add(type_name);
                panel.Controls.Add(director);
                panel.Controls.Add(telephone_number);
                panel.Controls.Add(reiting);

            }
        }
    }
}
