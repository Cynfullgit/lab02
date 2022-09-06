OOOOOOOOUUUUAAAAAAYEE!﻿
 
 # -----------------------------------------------------------------------------
# Auteur : CP                                                      
# Description:  Formulaire creation utilisateur  										
# Fichier :     FormUser.ps1                                            
# Date : 15 mars 2022                                	         
# -----------------------------------------------------------------------------
function prompt{"R2D2 % "}

#Failsafe
if ($args.count -ne 0) 
{
    Write-Host "HEY LE CHAUDRON, CA PREND PAS DE PARAMETRE CTE FONCTION LA" -foregroundcolor "Red"
    exit
}

function main()
{
    Write-Host "create"
}


#$img = [Drawing.Image]::FromFile('E:\Docs\xmulu1f6urt11.png')

#Load un assembleur de formulaire
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
#Apparence plus moderne
[void][System.Windows.Forms.Application]::EnableVisualStyles() 

#Creation d'un nouveau formulaire
$projet2 = New-Object System.Windows.Forms.Form 

#Etiquette prenom
$labelPrenom = New-Object System.Windows.Forms.Label
$labelPrenom.Text = "Prenom : "
$labelPrenom.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelPrenom.Location = [System.Drawing.Point]::new(10, 10) #(largeur, hauteur)
$labelPrenom.Size = [System.Drawing.Size]::new(70, 25)  #(largeur, hauteur)

#Textbox prenom
$textboxPrenom = New-Object System.Windows.Forms.TextBox
$textboxPrenom.Text = "" 
$textboxPrenom.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxPrenom.Location = [System.Drawing.Point]::new(80, 15)  #(largeur, hauteur)
$textboxPrenom.Size = [System.Drawing.Size]::new(240, 30)  #(largeur, hauteur)
$textboxPrenom.TabIndex = 1

#Etiquette nom
$labelNom = New-Object System.Windows.Forms.Label
$labelNom.Text = "Nom : "
$labelNom.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelNom.Location = [System.Drawing.Point]::new(10, 50)    #(largeur, hauteur)
$labelNom.Size = [System.Drawing.Size]::new(70, 25) #(largeur, hauteur)

#Textbox nom
$textboxNom = New-Object System.Windows.Forms.TextBox
$textboxNom.Text = "" 
$textboxNom.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxNom.Location = [System.Drawing.Point]::new(80, 55)  #(largeur, hauteur)
$textboxNom.Size = [System.Drawing.Size]::new(240, 30)  #(largeur, hauteur)
$textboxNom.TabIndex = 2

#Etiquette adresse courriel
$labelCourriel = New-Object System.Windows.Forms.Label
$labelCourriel.Text = "Adresse courriel : "
$labelCourriel.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelCourriel.Location = [System.Drawing.Point]::new(350, 10) #(largeur, hauteur)
$labelCourriel.Size = [System.Drawing.Size]::new(140, 25)  #(largeur, hauteur)

#Textbox adresse courriel
$textboxCourriel = New-Object System.Windows.Forms.TextBox
$textboxCourriel.Text = "" 
$textboxCourriel.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxCourriel.Location = [System.Drawing.Point]::new(490, 15)  #(largeur, hauteur)
$textboxCourriel.Size = [System.Drawing.Size]::new(240, 30)  #(largeur, hauteur)
$textboxCourriel.TabIndex = 3

#Etiquette nom serveur
$labelServeur = New-Object System.Windows.Forms.Label
$labelServeur.Text = "Nom du serveur : "
$labelServeur.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelServeur.Location = [System.Drawing.Point]::new(350, 50)    #(largeur, hauteur)
$labelServeur.Size = [System.Drawing.Size]::new(140, 25) #(largeur, hauteur)

#Textbox serveur
$textboxServeur = New-Object System.Windows.Forms.TextBox
$textboxServeur.Text = "" 
$textboxServeur.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxServeur.Location = [System.Drawing.Point]::new(490, 55)  #(largeur, hauteur)
$textboxServeur.Size = [System.Drawing.Size]::new(240, 30)  #(largeur, hauteur)
$textboxServeur.TabIndex = 4

#Etiquette path
$labelChemin = New-Object System.Windows.Forms.Label
$labelChemin.Text = "Path : "
$labelChemin.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelChemin.Location = [System.Drawing.Point]::new(10, 120)    #(largeur, hauteur)
$labelChemin.Size = [System.Drawing.Size]::new(70, 25) #(largeur, hauteur)

#Textbox path
$textboxChemin = New-Object System.Windows.Forms.TextBox
$textboxChemin.Text = "" 
$textboxChemin.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxChemin.Location = [System.Drawing.Point]::new(80, 125)  #(largeur, hauteur)
$textboxChemin.Size = [System.Drawing.Size]::new(650, 30)  #(largeur, hauteur)
$textboxChemin.TabIndex = 5


#Etiquette utilisateur
$labelUtilisateur = New-Object System.Windows.Forms.Label
$labelUtilisateur.Text = "Nom du compte : "
$labelUtilisateur.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelUtilisateur.Location = [System.Drawing.Point]::new(10, 190)    #(largeur, hauteur)
$labelUtilisateur.Size = [System.Drawing.Size]::new(140, 25) #(largeur, hauteur)

#Textbox utilisateur
$textboxUtilisateur = New-Object System.Windows.Forms.TextBox
$textboxUtilisateur.Text = "" 
$textboxUtilisateur.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxUtilisateur.Location = [System.Drawing.Point]::new(150, 195)  #(largeur, hauteur)
$textboxUtilisateur.Size = [System.Drawing.Size]::new(200, 30)  #(largeur, hauteur)
$textboxUtilisateur.TabIndex = 6

#Etiquette Mdp
$labelMdp = New-Object System.Windows.Forms.Label
$labelMdp.Text = "Mot de passe : "
$labelMdp.Font = [System.Drawing.Font]::new("Papyrus", 12)
$labelMdp.Location = [System.Drawing.Point]::new(10, 230)    #(largeur, hauteur)
$labelMdp.Size = [System.Drawing.Size]::new(140, 25) #(largeur, hauteur)

#Textbox Mdp
$textboxMdp = New-Object System.Windows.Forms.TextBox
$textboxMdp.Text = "" 
$textboxMdp.Font = [System.Drawing.Font]::new("Comic Sans MS", 8)
$textboxMdp.Location = [System.Drawing.Point]::new(150, 235)  #(largeur, hauteur)
$textboxMdp.Size = [System.Drawing.Size]::new(200, 30)  #(largeur, hauteur)
$textboxMdp.TabIndex = 7
$textboxMdp.Add_TextChanged({Write-Host "Text changed, do something"})

#Mdp not valid
$labelInvalid = New-Object System.Windows.Forms.Label
$labelInvalid.Text = "Password must contain : Uppercase; Lowercase; Number; Special character"
$labelInvalid.Font = [System.Drawing.Font]::new("Arial Black", 7)
$labelInvalid.Location = [System.Drawing.Point]::new(150, 260)  #(largeur, hauteur)
$labelInvalid.Size = [System.Drawing.Size]::new(200, 30)  #(largeur, hauteur)

#Mdp valid
$labelValid = New-Object System.Windows.Forms.Label
$labelValid.Text = "Password is valid"
$labelValid.Font = [System.Drawing.Font]::new("Arial Black", 7)
$labelValid.Location = [System.Drawing.Point]::new(150, 260)  #(largeur, hauteur)
$labelValid.Size = [System.Drawing.Size]::new(200, 30)  #(largeur, hauteur)

#Checkbox changeMdp
$checkboxChangeMdp = New-Object System.Windows.Forms.CheckBox #Initialisation d'une case Ã  cocher
$checkboxChangeMdp.Text = "Changer le Mdp à la première session"
$checkboxChangeMdp.Font = [System.Drawing.Font]::new("Papyrus", 12)
$checkboxChangeMdp.Location = [System.Drawing.Point]::new(400, 180)
$checkboxChangeMdp.Size = [System.Drawing.Size]::new(300, 25)
$checkboxChangeMdp.TabIndex = 8

#Checkbox changepass
$checkboxNochange = New-Object System.Windows.Forms.CheckBox #Initialisation d'une case Ã  cocher
$checkboxNochange.Text = "Ne peut pas changer de Mdp"
$checkboxNochange.Font = [System.Drawing.Font]::new("Papyrus", 12)
$checkboxNochange.Location = [System.Drawing.Point]::new(400, 210)
$checkboxNochange.Size = [System.Drawing.Size]::new(300, 25)
$checkboxNochange.TabIndex = 9

#Checkbox neverchangepass
$checkboxExpire = New-Object System.Windows.Forms.CheckBox #Initialisation d'une case Ã  cocher
$checkboxExpire.Text = "Mdp n'expire jamais"
$checkboxExpire.Font = [System.Drawing.Font]::new("Papyrus", 12)
$checkboxExpire.Location = [System.Drawing.Point]::new(400, 240)
$checkboxExpire.Size = [System.Drawing.Size]::new(300, 25)
$checkboxExpire.TabIndex = 10

#Checkbox deactivate
$checkboxActif = New-Object System.Windows.Forms.CheckBox #Initialisation d'une case Ã  cocher
$checkboxActif.Text = "Compte désactivé"
$checkboxActif.Font = [System.Drawing.Font]::new("Papyrus", 12)
$checkboxActif.Location = [System.Drawing.Point]::new(400, 270)
$checkboxActif.Size = [System.Drawing.Size]::new(300, 25)
$checkboxActif.TabIndex = 11

#Button creer
$buttonCreate = New-Object System.Windows.Forms.Button #Initialisation d'un boutton
$buttonCreate.Text = "Créer l'utilisateur"
$buttonCreate.Font = [System.Drawing.Font]::new("Comic Sans MS",10)
$buttonCreate.Location = [System.Drawing.Point]::new(180, 310)    #(largeur, hauteur)
$buttonCreate.Size = [System.Drawing.Size]::new(400, 42)    #(largeur, hauteur)
$buttonCreate.TabIndex = 12
$buttonCreate.add_Click({main})

#Formwindow
$projet2.Text = "Création d'utilisateur d'AD" #Titre/libel de la boite formulaire
$projet2.Size = [System.Drawing.Size]::new(770, 430) #(largeur, hauteur)
$projet2.MaximizeBox = $False
$projet2.MinimizeBox = $false  
$projet2.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D #Style des bordures du formulaire
#$projet2.BackgroundImage = $img
$projet2.BackgroundImageLayout = 'Stretch'

#Insertion des elements dans le formulaire
$projet2.Controls.Add($labelPrenom)
$projet2.Controls.Add($textboxPrenom)
$projet2.Controls.Add($labelNom)
$projet2.Controls.Add($textboxNom)

$projet2.Controls.Add($labelCourriel)
$projet2.Controls.Add($textboxCourriel)
$projet2.Controls.Add($labelServeur)
$projet2.Controls.Add($textboxServeur)

$projet2.Controls.Add($labelChemin)
$projet2.Controls.Add($textboxChemin)

$projet2.Controls.Add($labelUtilisateur)
$projet2.Controls.Add($textboxUtilisateur)
$projet2.Controls.Add($labelMdp)
$projet2.Controls.Add($textboxMdp)

$projet2.Controls.Add($checkboxChangeMdp)
$projet2.Controls.Add($checkboxNochange)
$projet2.Controls.Add($checkboxExpire)
$projet2.Controls.Add($checkboxActif)

$projet2.Controls.Add($buttonCreate)

#$projet2.Controls.Add($labelValid)
#$projet2.Controls.Add($labelInvalid)
#$projet2.Controls.Remove($labelValid)
#$projet2.Controls.Remove($labelInvalid)

#Form print
$projet2.ShowDialog() | Out-Null




