namespace PartnerManager;

static class Program
{
    /// <summary>
    ///  The main entry point for the application.
    /// </summary>
    [STAThread]
    static void Main()
    {
        Application.ThreadException += (sender, args) =>
        {
            MessageBox.Show($"Необработанная ошибка: {args.Exception.Message}", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
        };
        AppDomain.CurrentDomain.UnhandledException += (sender, args) =>
        {
            var ex = args.ExceptionObject as Exception;
            MessageBox.Show($"Критическая ошибка: {ex?.Message}", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
        };
        // To customize application configuration such as set high DPI settings or default font,
        // see https://aka.ms/applicationconfiguration.
        ApplicationConfiguration.Initialize();
        Application.Run(new Form1());
    }    
}