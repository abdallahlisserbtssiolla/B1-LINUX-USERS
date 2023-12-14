#!/bin/bash

# Situation 1

# Création des groupes
groupadd Dev
groupadd res

# Création des utilisateurs
useradd -G Dev -m -s /bin/bash atouzart
useradd -G Dev -m -s /bin/bash nalnosni
useradd -G Dev -m -s /bin/bash ndasilva
useradd -G res -m -s /bin/bash nalmosni
useradd -G res -m -s /bin/bash dcharles

# Création des ressources
mkdir /tmp/dev
mkdir /tmp/res

# Attribution des ressources aux groupes
chown :Dev /tmp/dev
chown :res /tmp/res
chmod 770 /tmp/dev
chmod 770 /tmp/res

# Situation 2

# Création des utilisateurs
useradd -m -s /bin/bash cbethune
useradd -m -s /bin/bash sflissi
useradd -m -s /bin/bash dharrag
useradd -m -s /bin/bash pdao

# Création des ressources
mkdir /tmp/administration
mkdir /tmp/comptabilite
mkdir /tmp/technique

# Attribution des ressources aux utilisateurs
chown cbethune /tmp/administration
chown sflissi /tmp/administration /tmp/comptabilite /tmp/technique
chown dharrag /tmp/technique
chown pdao /tmp/administration
chmod 700 /tmp/administration
chmod 770 /tmp/comptabilite /tmp/technique

# Validation de la configuration
echo "Configuration terminée."
