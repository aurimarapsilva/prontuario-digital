namespace Plantilla.WindowsService
{
    partial class ProjectInstaller
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.PlantillaServiceProcessInstaller = new System.ServiceProcess.ServiceProcessInstaller();
            this.PlantillaServiceInstaller = new System.ServiceProcess.ServiceInstaller();
            // 
            // PlantillaServiceProcessInstaller
            // 
            this.PlantillaServiceProcessInstaller.Account = System.ServiceProcess.ServiceAccount.LocalSystem;
            this.PlantillaServiceProcessInstaller.Password = null;
            this.PlantillaServiceProcessInstaller.Username = null;
            // 
            // PlantillaServiceInstaller
            // 
            this.PlantillaServiceInstaller.Description = "Administra el control de las licencias en Plantilla.com";
            this.PlantillaServiceInstaller.DisplayName = "PlantillaService";
            this.PlantillaServiceInstaller.ServiceName = "PlantillaService";
            // 
            // ProjectInstaller
            // 
            this.Installers.AddRange(new System.Configuration.Install.Installer[] {
            this.PlantillaServiceProcessInstaller,
            this.PlantillaServiceInstaller});

        }

        #endregion

        private System.ServiceProcess.ServiceProcessInstaller PlantillaServiceProcessInstaller;
        private System.ServiceProcess.ServiceInstaller PlantillaServiceInstaller;
    }
}